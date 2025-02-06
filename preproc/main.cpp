#include "genCFG.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
using namespace llvm;

//-----------------------------------------------------------------------------
// New PM Registration
//-----------------------------------------------------------------------------

// This is the core interface for pass plugins. It guarantees that 'opt' will
// be able to recognize pSLP when added to the pass pipeline on the
// command line, i.e. via '-passes=hello-world'
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return {
        LLVM_PLUGIN_API_VERSION, "CC", LLVM_VERSION_STRING,
        [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
                    if (Name == "CC") {
                        FPM.addPass(genCFG());
                        return true;
                    }
                    return false;
                }
            );
        }
    };
}
