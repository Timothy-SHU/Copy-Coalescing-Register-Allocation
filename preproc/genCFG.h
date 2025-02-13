#include "liveness.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/ProfDataUtils.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/BlockFrequencyInfo.h"

int numReg = 6;

namespace {
using namespace llvm;

void printNodeInfo(int v, const Instruction &I, const std::vector <std::pair <int, std::set <int>>> &UsedVar, std::map <int, int> InstrFreq) {
    errs() << "[" << v << "] : ";
    if (UsedVar[v].first != 0)
        errs() << "(" << UsedVar[v].first << ") ";
    errs() << "|";
    for (int var : UsedVar[v].second)
        errs() << " (" << var << ")";
    errs() << "\t\t" << I << "\t\tFreq = " << InstrFreq[v] << "\n";
}

void printCFG(int cntNode, const std::vector <std::vector <int>> &CFG, const std::vector <std::set <int>> &LiveIn, const std::vector <std::set <int>> &LiveOut) {
    errs() << "------ Control-Flow Graph & Live Ranges ------\n";
    for (int u = 1; u <= cntNode; u++) {
        errs() << "[" << u << "] ->";
        for (int v : CFG[u])
            errs() << " [" << v << "]";
        errs() << ";  LiveIn:";
        for (int var : LiveIn[u])
            errs() << " (" << var << ")";
        errs() << ";  LiveOut:";
        for (int var : LiveOut[u])
            errs() << " (" << var << ")";
        errs() << "\n";
    }
}

void printInterference(int cntVar, const std::vector <std::set <int>> &H) {
    errs() << "----- Interference Graph -----\n";
    for (int u = 1; u <= cntVar; u++) {
        errs() << "(" << u << ") ->";
        for (int v : H[u])
            errs() << " (" << v << ")";
        errs() << "\n";
    }
    errs() << "\n";
}

void printAffinity(const std::vector <std::pair <int, int>> &CopyNode, const std::vector <std::pair <std::pair <int, int>, long long>> &A) {
    errs() << "----- Affinity Relations -----\n";
    errs() << "CopyNodes:";
    for (std::pair <int, int> p : CopyNode)
        errs() << " [" << p.first << "]";
    errs() << "\n";
    for (std::pair <std::pair <int, int>, long long> e : A)
        errs() << "(" << e.first.first << ") <=> (" << e.first.second << "): "<< e.second << "\n";
}

void outputInfo(std::ofstream &output, int cntNode, int cntVar, 
                const std::vector <std::vector <int>> &CFG, const std::vector <std::set <int>> &LiveIn, const std::vector <std::set <int>> &LiveOut, 
                const std::vector <std::set <int>> &H, const std::vector <std::pair <std::pair <int, int>, long long>> &A) {
    if (!output.is_open())
        errs() << "Can't open output file!\n";

    output << cntNode << " " << cntVar << " " << numReg << std::endl;
    for (int u = 1; u <= cntNode; u++) {
        output << CFG[u].size() << " ";
        for (int v : CFG[u])
            output << v << " ";
        output << std::endl;
        output << LiveIn[u].size() << " ";
        for (int var : LiveIn[u])
            output << var << " ";
        output << std::endl;
        output << LiveOut[u].size() << " ";
        for (int var : LiveOut[u])
            output << var << " ";
        output << std::endl;
    }
    output << std::endl;

    output << cntVar << std::endl;
    for (int u = 1; u <= cntVar; u++) {
        output << H[u].size() << " ";
        for (int v : H[u])
            output << v << " ";
        output << std::endl;
    }
    output << std::endl;

    output << A.size() << std::endl;
    for (std::pair <std::pair <int, int>, long long> e : A) {
        output << e.first.first << " " << e.first.second << " " << e.second << std::endl;
        if (e.second < 0) errs() << "E: Negative affinity weight!\n";
    }

    output.close();
}

struct genCFG : PassInfoMixin <genCFG> {
    // Main entry point, takes IR unit to run the pass on (&F) and the
    // corresponding pass manager (to be queried if need be)
    int cntFunc = 0;
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
        cntFunc++;

        std::ifstream configFile("config.txt");
        configFile >> numReg;

        int cntNode = 0, cntVar = 0;
        std::map <Value *, int> VarID;
        std::map <Instruction *, int> NodeID;

        std::map <BasicBlock *, int> ExitNode;
        std::vector <std::pair <int, int>> CopyNode;
        std::map <std::pair <BasicBlock *, BasicBlock *>, int> EntryNode;

        std::map <int, long long> InstrFreq;
        std::map <std::pair <BasicBlock *, BasicBlock *>, long long> BlockFreq;

        // CFG and var list are 1-based, need to append a dummy upon creation
        std::vector <std::vector <int>> CFG;
        CFG.push_back(std::vector <int> ());
        std::vector <std::pair <int, std::set <int>>> UsedVar;
        UsedVar.push_back(std::make_pair(0, std::set <int> ()));

        for (BasicBlock &B : F)
            for (Instruction &I : B)
                if (!I.getType()->isVoidTy())
                    if (VarID.find(&I) == VarID.end()) {
                        VarID[&I] = ++cntVar;
                    } else
                        errs() << "Multiple assignments to the same variable (not SSA)!\n";

        for (BasicBlock &B : F) {
            Instruction *I = B.getTerminator();
            if (!hasBranchWeightMD(*I)) continue;
            SmallVector <uint32_t> weights;
            MDNode *profData = getBranchWeightMDNode(*I);
            llvm::extractFromBranchWeightMD(profData, weights);
            int i = 0;
            for (BasicBlock *succ : successors(&B))
                BlockFreq[std::make_pair(succ, nullptr)] += weights[i], 
                BlockFreq[std::make_pair(succ, &B)] += weights[i], i++;
        }


        for (BasicBlock &B : F) {
            // errs() << ">>>> Block" << ":\n";
            int prev = -1;
            std::map <BasicBlock *, int> prevPHI;
            for (Instruction &I : B) {
                if (I.getOpcode() == Instruction::PHI) {
                    PHINode *PHI = dyn_cast <PHINode> (&I);
                    for (int i = 0; i < PHI->getNumIncomingValues(); i++) {
                        BasicBlock *from = PHI->getIncomingBlock(i);
                        Value *var = PHI->getIncomingValue(i);

                        int cur = ++cntNode;
                        CFG.push_back(std::vector <int> ());
                        UsedVar.push_back(std::make_pair(0, std::set <int> ()));

                        UsedVar[cur].first = VarID[&I];
                        if (VarID.find(var) != VarID.end())
                            UsedVar[cur].second.insert(VarID[var]);

                        if (prevPHI.find(from) == prevPHI.end())
                            EntryNode[std::make_pair(&B, from)] = cur;
                        else
                            CFG[prevPHI[from]].push_back(cur);

                        prevPHI[from] = cur;
                        
                        if (BlockFreq.find(std::make_pair(&B, from)) != BlockFreq.end())
                            InstrFreq[cur] = BlockFreq[std::make_pair(&B, from)];
                        else
                            InstrFreq[cur] = 1;

                        CopyNode.push_back(std::make_pair(cur, InstrFreq[cur]));

                        // printNodeInfo(cur, I, UsedVar, InstrFreq);
                    }
                } else {
                    NodeID[&I] = ++cntNode;
                    CFG.push_back(std::vector <int> ());
                    UsedVar.push_back(std::make_pair(0, std::set <int> ()));

                    for (int i = 0; i < I.getNumOperands(); i++) {
                        Value *var = I.getOperand(i);
                        if (VarID.find(var) != VarID.end())
                            UsedVar[NodeID[&I]].second.insert(VarID[var]);
                    }
                    if (!I.getType()->isVoidTy())
                        UsedVar[NodeID[&I]].first = VarID[&I];
                    
                    if (prev == -1) {
                        EntryNode[std::make_pair(&B, nullptr)] = NodeID[&I];
                        for (std::pair <BasicBlock *, int> p : prevPHI)
                            CFG[p.second].push_back(NodeID[&I]);
                    } else
                        CFG[prev].push_back(NodeID[&I]);
                    prev = NodeID[&I];

                    if (BlockFreq.find(std::make_pair(&B, nullptr)) != BlockFreq.end())
                        InstrFreq[NodeID[&I]] = BlockFreq[std::make_pair(&B, nullptr)];
                    else
                        InstrFreq[NodeID[&I]] = 1;

                    if (isa<LoadInst>(&I))
                        if (UsedVar[NodeID[&I]].second.size() == 1)
                            CopyNode.push_back(std::make_pair(NodeID[&I], InstrFreq[NodeID[&I]]));

                    // printNodeInfo(NodeID[&I], I, UsedVar, InstrFreq);
                }
            }
            if (prev == -1) {
                int cur = ++cntNode;
                CFG.push_back(std::vector <int> ());
                UsedVar.push_back(std::make_pair(0, std::set <int> ()));

                for (std::pair <BasicBlock *, int> p : prevPHI)
                    CFG[p.second].push_back(cur);
                ExitNode[&B] = cur;
            } else
                ExitNode[&B] = prev;
        }
        
        for (BasicBlock &B : F) {
            if (ExitNode.find(&B) == ExitNode.end()) continue;
            for (BasicBlock *succ : successors(&B)) {
                int u = ExitNode[&B], v;
                if (EntryNode.find(std::make_pair(succ, &B)) != EntryNode.end())
                    v = EntryNode[std::make_pair(succ, &B)];
                else
                    v = EntryNode[std::make_pair(succ, nullptr)];
                CFG[u].push_back(v);
            }
        }
        
        auto LiveInOut = getLiveness(cntNode, CFG, UsedVar);
        std::vector <std::set <int>> LiveIn = LiveInOut.first;
        std::vector <std::set <int>> LiveOut = LiveInOut.second;
        // printCFG(cntNode, CFG, LiveIn, LiveOut);
        
        std::vector <std::set <int>> H = getInterference(cntNode, cntVar, LiveIn, LiveOut);
        // printInterference(cntVar, H);
        
        std::vector <std::pair <std::pair <int, int>, long long>> A;
        for (std::pair <int, int> p : CopyNode) {
            int v = p.first, w = p.second;
            int x = UsedVar[v].first, y = *UsedVar[v].second.begin();
            if (LiveIn[v].find(x) == LiveIn[v].end() && LiveOut[v].find(x) != LiveOut[v].end())
                if (LiveIn[v].find(y) != LiveIn[v].end() && LiveOut[v].find(y) == LiveOut[v].end())
                    A.push_back(std::make_pair(std::make_pair(x, y), w));
        }
        // printAffinity(CopyNode, A);
        
        std::ofstream output("tmp/"+std::to_string(cntFunc));
        outputInfo(output, cntNode, cntVar, CFG, LiveIn, LiveOut, H, A);
                
        return PreservedAnalyses::all();
    }

    // Without isRequired returning true, this pass will be skipped for functions
    // decorated with the optnone LLVM attribute. Note that clang -O0 decorates
    // all functions with optnone.
    static bool isRequired() { return true; }
};

} // namespace
