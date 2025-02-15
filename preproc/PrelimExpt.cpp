#include <bits/stdc++.h>
#include <sys/stat.h>
#include <filesystem>
using namespace std;

int numReg = 6;
string INPUT_DIR = "../bench/SPEC2017/input-per-func/";
string RESULT_DIR = "../results/SPEC2017/";

int main() {
    ifstream configFile("config.txt");
    configFile >> numReg;

    INPUT_DIR += "k="+to_string(numReg)+"/";
    RESULT_DIR += "k="+to_string(numReg)+"/";
    mkdir(RESULT_DIR.c_str(), 0777);
    RESULT_DIR += "Prelim/";
    mkdir(RESULT_DIR.c_str(), 0777);

    string str;
    while (configFile >> str) {
        if (str[0] == '#') continue;
        string folderName = str+"/";
        mkdir((RESULT_DIR+folderName).c_str(), 0777);

        for (auto &subfolder : filesystem::directory_iterator(INPUT_DIR+folderName)) {
            filesystem::path inputSubfolder(subfolder.path());
            string subfolderName = inputSubfolder.filename();

            mkdir((RESULT_DIR+folderName+subfolderName).c_str(), 0777);
            for (auto &file : filesystem::directory_iterator(INPUT_DIR+folderName+subfolderName)) {
                cerr << "Solving " << file.path() << "......";
                filesystem::path inputFile(file.path());
                string fileName = inputFile.filename();
                system(("../algos/ILP/ILP < "+inputFile.u8string()+" > "+RESULT_DIR+folderName+subfolderName+"/"+fileName).c_str());
                cerr << "  Complete." << endl;
            }
        }
    }
    return 0;
}
