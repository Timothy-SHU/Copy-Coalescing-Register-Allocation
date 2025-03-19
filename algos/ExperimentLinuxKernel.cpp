#include <bits/stdc++.h>
#include <sys/stat.h>
#include <filesystem>
using namespace std;

int numRuns = 1;
string ALGO, MODE;
string INPUT_DIR = "../bench/LinuxKernel/input/";
string RESULT_DIR = "../results/LinuxKernel/";

int main() {
    ifstream configFile("config-LinuxKernel.txt");
    configFile >> ALGO >> MODE >> numRuns;

    RESULT_DIR += ALGO+"/";
    mkdir(RESULT_DIR.c_str(), 0777);

    string str;
    while (configFile >> str) {
        if (str[0] == '#') continue;
        for (int T = 0; T < numRuns; T++) {
            string numRunsStr = to_string(T);
            string CUR_RESULT_DIR = RESULT_DIR+"run-";
            CUR_RESULT_DIR += string(2-min(2, (int)numRunsStr.length()), '0')+numRunsStr+"/";
            mkdir(CUR_RESULT_DIR.c_str(), 0777);

            if (MODE == "normal") {
                string folderName = str+"/";
                mkdir((CUR_RESULT_DIR+folderName).c_str(), 0777);
                for (auto &file : filesystem::directory_iterator(INPUT_DIR+folderName)) {
                    filesystem::path inputFile(file.path());
                    string fileName = inputFile.filename();
                    cerr << "Solving " << fileName << "......";
                    system((ALGO+"/"+ALGO+" < "+inputFile.u8string()+" > "+CUR_RESULT_DIR+folderName+"/"+fileName).c_str());
                    cerr << "  Complete." << endl;
                }
            } else if (MODE == "merged") {
                string fileName = str+"_merged";
                cerr << "Solving " << fileName << "......";
                system((ALGO+"/"+ALGO+" < "+INPUT_DIR+fileName+" > "+CUR_RESULT_DIR+fileName).c_str());
                cerr << "  Complete." << endl;
            } else { cerr << "No such mode as '" << MODE << "'!" << endl; break; }
        }
    }
    return 0;
}
