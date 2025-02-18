#include <bits/stdc++.h>
#include <string>
#include <sys/stat.h>
#include <filesystem>
using namespace std;

int numReg = 6;
string IR_DIR = "../bench/SPEC2017/-O1/";
string INPUT_DIR = "../bench/SPEC2017/input-per-func/";

int main() {
    mkdir(INPUT_DIR.c_str(), 0777);
    ifstream configFile("config.txt");
    configFile >> numReg;

    INPUT_DIR += "k="+to_string(numReg)+"/";
    mkdir(INPUT_DIR.c_str(), 0777);

    string str;
    while (configFile >> str) {
        if (str[0] == '#') continue;
        string folderName = str+"/";
        mkdir((INPUT_DIR+folderName).c_str(), 0777);

        for (auto &file : filesystem::directory_iterator(IR_DIR+folderName+"units")) {
            cerr << "Preprocessing " << file.path() << "......";
            filesystem::path inputFile(file.path());
            string fileName = inputFile.filename().stem();
            mkdir((INPUT_DIR+folderName+fileName).c_str(), 0777);

            mkdir("tmp/", 0777);
            system(("opt -load-pass-plugin ./libCC.so -passes=CC -disable-output "+inputFile.u8string()).c_str());
            for (auto &graph : filesystem::directory_iterator("tmp")) {
                filesystem::path graphFile (graph.path());
                string num = graphFile.filename();
                system(("cp tmp/"+num+" "+INPUT_DIR+folderName+fileName+"/"+fileName+"_"+num).c_str());
            }
            filesystem::remove_all("tmp");
            cerr << "  Complete." << endl;
        }
    }
    return 0;
}
