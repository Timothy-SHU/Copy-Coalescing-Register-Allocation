#include <bits/stdc++.h>
#include <sys/stat.h>
#include <filesystem>
using namespace std;

int numReg = 6;
string ALGO, MODE;
string INPUT_DIR = "../bench/SPEC2017/input/";
string RESULT_DIR = "../results/SPEC2017/";

int main() {
    ifstream configFile("config.txt");
    configFile >> numReg >> ALGO >> MODE;

    INPUT_DIR += "k="+to_string(numReg)+"/";
    RESULT_DIR += "k="+to_string(numReg)+"/";
    mkdir(RESULT_DIR.c_str(), 0777);
    RESULT_DIR += ALGO+"/";
    mkdir(RESULT_DIR.c_str(), 0777);

    string str;
    while (configFile >> str) {
        if (str[0] == '#') continue;
        if (MODE == "normal") {
            string folderName = str+"/";
            mkdir((RESULT_DIR+folderName).c_str(), 0777);
            for (auto &file : filesystem::directory_iterator(INPUT_DIR+folderName)) {
                filesystem::path inputFile(file.path());
                string fileName = inputFile.filename();
                cerr << "Solving " << fileName << "......";
                system((ALGO+"/"+ALGO+" < "+inputFile.u8string()+" > "+RESULT_DIR+folderName+"/"+fileName).c_str());
                cerr << "  Complete." << endl;
            }
        } else if (MODE == "merged") {
            string fileName = str+"_merged";
            cerr << "Solving " << fileName << "......";
            system((ALGO+"/"+ALGO+" < "+INPUT_DIR+fileName+" > "+RESULT_DIR+fileName).c_str());
            cerr << "  Complete." << endl;
        } else { cerr << "No such mode as '" << MODE << "'!" << endl; break; }
    }
    return 0;
}
