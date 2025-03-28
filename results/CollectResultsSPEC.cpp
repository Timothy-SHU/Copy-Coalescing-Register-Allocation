#include <bits/stdc++.h>
#include <iomanip>
using namespace std;

string RESULT_DIR = "SPEC2017/";

int main() {
    ifstream configFile("config-SPEC.txt");
    ofstream ILPRecord("RuntimePlots/ILP-SPEC.txt");
    ofstream TreewidthRecord("RuntimePlots/Treewidth-SPEC.txt");

    string str;
    long long sumTotalWeight = 0, sumHeuristicAns = 0, sumILPAns = 0;
    double sumHeuristicTime = 0, sumILPTime = 0, sumTreewidthTime = 0, sumTreewidthDecompTime = 0;
    while (configFile >> str) {
        if (str[0] == '#') continue;
        string folderName = str+"/";
        int numGraph = 0, totalSize = 0, mxSize = 0, totalAffDeg = 0, mxTW = 0, cntHybrid = 0;
        long long HeuristicAns = 0, ILPAns = 0, TreewidthAns = 0, totalWeight = 0;
        double HeuristicTime = 0, ILPTime = 0, TreewidthTime = 0, TreewidthDecompTime = 0;
        for (auto &file : filesystem::directory_iterator(RESULT_DIR+"Heuristic/run-00/"+folderName)) {
            int n, tw = 0, numRuns; long long ans, tot;
            double avgAff, runtime, decomptime;
            filesystem::path inputFile(file.path());
            string fileName = inputFile.filename();

            ifstream GraphStat(file.path());
            GraphStat >> n >> avgAff >> ans >> tot;
            numGraph++, totalSize += n, mxSize = max(mxSize, n);
            totalAffDeg += (int)(n*avgAff), totalWeight += tot;
            ILPRecord << n << ' ', TreewidthRecord << n << ' ';

            numRuns = 0;
            long long curHeuristicAns = 0;
            double curHeuristicTime = 0;
            for (auto &run : filesystem::directory_iterator(RESULT_DIR+"Heuristic")) {
                ans = tot = runtime = 0;
                ifstream HeuristicRes(run.path().u8string()+"/"+folderName+fileName);
                HeuristicRes >> n >> avgAff >> ans >> tot >> runtime;
                if (runtime < 1e-8) continue;
                numRuns++, curHeuristicAns = ans, curHeuristicTime += runtime;
            }
            curHeuristicTime /= numRuns;
            HeuristicAns += curHeuristicAns, HeuristicTime += curHeuristicTime;

            numRuns = 0;
            long long curILPAns = 0;
            double curILPTime = 0;
            for (auto &run : filesystem::directory_iterator(RESULT_DIR+"ILP")) {
                ans = tot = runtime = 0;
                ifstream ILPRes(run.path().u8string()+"/"+folderName+fileName);
                ILPRes >> n >> avgAff >> ans >> tot >> runtime;
                if (runtime < 1e-8) continue;
                numRuns++, curILPAns = ans, curILPTime += runtime;
            }
            curILPTime /= numRuns;
            ILPAns += curILPAns, ILPTime += curILPTime;
            ILPRecord << curILPTime << endl;

            numRuns = 0;
            long long curTreewidthAns = 0;
            bool isAnomaly = false, isHybrid = false;
            double curTreewidthTime = 0, curTreewidthDecompTime = 0;
            for (auto &run : filesystem::directory_iterator(RESULT_DIR+"Treewidth")) {
                ans = tot = runtime = decomptime = tw = 0;
                ifstream TreewidthRes(run.path().u8string()+"/"+folderName+fileName);
                TreewidthRes >> n >> avgAff >> tw >> ans >> tot >> runtime >> decomptime;
                mxTW = max(mxTW, tw);
                if (tw == 0 && runtime < 1e-8) continue;
                if (tw <= 11) {
                    numRuns++, curTreewidthAns = ans;
                    curTreewidthTime += runtime;
                    curTreewidthDecompTime += decomptime;
                    int firstCol = -1; TreewidthRes >> firstCol;
                    if (n > 0 && firstCol == -1 && runtime > 0) isAnomaly = true;
                } else {
                    isHybrid = true, numRuns++;
                    curTreewidthAns = curILPAns;
                    curTreewidthDecompTime += decomptime;
                }
            }
            curTreewidthTime /= numRuns, curTreewidthDecompTime /= numRuns;
            if (!isHybrid) {
                TreewidthAns += curTreewidthAns;
                TreewidthTime += curTreewidthTime;
                TreewidthDecompTime += curTreewidthDecompTime;
                TreewidthRecord << curTreewidthTime << endl;
            } else {
                TreewidthAns += curTreewidthAns;
                TreewidthTime += curILPTime+curTreewidthDecompTime;
                TreewidthDecompTime += curTreewidthDecompTime;
                TreewidthRecord << curILPTime+curTreewidthDecompTime << endl;
            }
            cntHybrid += isHybrid;

            if (isAnomaly)
                cerr << "Treewidth allocation anomaly at "+folderName+fileName+"!\n";
            if (curILPAns != curTreewidthAns)
                cerr << "Different answers of ILP and Treewidth at "+folderName+fileName+"!\n";
            if (curTreewidthDecompTime/numRuns > 5)
                cerr << "Tree decomp running slow (" << curTreewidthDecompTime/numRuns << "s) on "+folderName+fileName+"!\n";
        }
        cout << str+": " << numGraph << " graphs, " << totalSize << " nodes, ";
        cout << "max |V| = " << mxSize << ", avg |V| = " << 1.0*totalSize/numGraph << ", ";
        cout << "avg AffDeg = " << 1.0*totalAffDeg/totalSize << ", max tw = " << mxTW << "." << endl;
        cout << right << setw(22) << "Heuristic: answer = " << HeuristicAns << ", ";
        cout << "ratio = " << left << setprecision(6) << 1.0*HeuristicAns/totalWeight << ", ";
        cout << "total runtime = " << setprecision(6) << HeuristicTime << ".\n";
        cout << right << setw(22) << "ILP: answer = " << ILPAns << ", ";
        cout << "ratio = " << left << setprecision(6) << 1.0*ILPAns/totalWeight << ", ";
        cout << "total runtime = " << setprecision(8) << ILPTime << ".\n";
        cout << right << setw(22) << "Treewidth: answer = " << TreewidthAns << ", ";
        cout << "ratio = " << left << setprecision(6) << 1.0*TreewidthAns/totalWeight << ", ";
        cout << "total runtime = " << setprecision(6) << TreewidthTime << ", ";
        cout << "total decomp overhead = " << setprecision(6) << TreewidthDecompTime << ".";
        if (cntHybrid > 0) cout << " ILP called on " << cntHybrid << " graphs.";
        cout << endl;

        sumTotalWeight += totalWeight;
        sumHeuristicAns += HeuristicAns;
        sumHeuristicTime += HeuristicTime;
        sumILPAns += ILPAns;
        sumILPTime += ILPTime;
        sumTreewidthTime += TreewidthTime;
        sumTreewidthDecompTime += TreewidthDecompTime;

        int mergedMxTW = 0, numRuns;
        double mergedHeuristicTime = 0, mergedILPTime = 0;
        double mergedTreewidthTime = 0, mergedTreewidthDecompTime = 0;

        numRuns = 0;
        for (auto &run : filesystem::directory_iterator(RESULT_DIR+"Heuristic")) {
            ifstream HeuristicRes(run.path().u8string()+"/"+str+"_merged");
            int n; double avgAff, runtime = 0; long long ans, tot;
            HeuristicRes >> n >> avgAff >> ans >> tot >> runtime;
            mergedHeuristicTime += runtime;
            numRuns += (runtime > 0);
        }
        mergedHeuristicTime /= numRuns;

        numRuns = 0;
        for (auto &run : filesystem::directory_iterator(RESULT_DIR+"ILP")) {
            ifstream ILPRes(run.path().u8string()+"/"+str+"_merged");
            int n; double avgAff, runtime = 0; long long ans, tot;
            ILPRes >> n >> avgAff >> ans >> tot >> runtime;
            mergedILPTime += runtime;
            numRuns += (runtime > 0);
        }
        mergedILPTime /= numRuns;

        numRuns = 0;
        for (auto &run : filesystem::directory_iterator(RESULT_DIR+"Treewidth")) {
            ifstream TreewidthRes(run.path().u8string()+"/"+str+"_merged");
            int n, tw; double avgAff, runtime = 0, decomptime = 0; long long ans, tot;
            TreewidthRes >> n >> avgAff >> tw >> ans >> tot >> runtime >> decomptime;
            mergedTreewidthTime += runtime, mergedTreewidthDecompTime += decomptime;
            numRuns += (runtime > 0);
        }
        mergedTreewidthTime /= numRuns;

        cout << "Runtime on Merged Input: ";
        cout << "Heuristic -- " << mergedHeuristicTime << ", ";
        cout << "ILP -- " << mergedILPTime << ", ";
        cout << "Treewidth -- " << mergedTreewidthTime << ".\n";
        cout << endl;
    }
    cout << "Total Weight = " << left << setprecision(6) << sumTotalWeight << ".\n";
    cout << "Heuristic: total ans = " << left << setprecision(6) << sumHeuristicAns << ", ";
    cout << "overall ratio = " << left << setprecision(6) << 1.0*sumHeuristicAns/sumTotalWeight << ", ";
    cout << "total runtime = " << left << setprecision(6) << sumHeuristicTime << ".\n";
    cout << "ILP: total ans = " << left << setprecision(6) << sumILPAns << ", ";
    cout << "overall ratio = " << left << setprecision(6) << 1.0*sumILPAns/sumTotalWeight << ", ";
    cout << "total runtime = " << left << setprecision(8) << sumILPTime << ".\n";
    cout << "Treewidth: total runtime = " << left << setprecision(6) << sumTreewidthTime << ", ";
    cout << "total decomp time = " << left << setprecision(6) << sumTreewidthDecompTime << ".\n";
    return 0;
}
