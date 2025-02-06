#include <bits/stdc++.h>
#include <sys/stat.h>
#include <filesystem>
using namespace std;

const string DIR = "../bench/SPEC2017/input/";

int main() {
    filesystem::remove_all(DIR);
    mkdir(DIR.c_str(), 0777);
    for (auto &folder : filesystem::directory_iterator("../bench/SPEC2017/-fno-inline_-Os_-S_-emit-llvm")) {
        filesystem::path inputFolder(folder.path());
        string folderName = inputFolder.filename();
        mkdir((DIR+folderName).c_str(), 0777);
        for (auto &file : filesystem::directory_iterator("../bench/SPEC2017/-fno-inline_-Os_-S_-emit-llvm/"+folderName+"/units")) {
            cerr << "Preprocessing " << file.path() << "......";
            filesystem::path inputFile(file.path());
            string fileName = inputFile.filename();
            mkdir((DIR+folderName+"/"+fileName).c_str(), 0777);

            mkdir("tmp/", 0777);
            system(("opt -load-pass-plugin ./libCC.so -passes=CC -disable-output "+inputFile.u8string()).c_str());
            for (auto &graph : filesystem::directory_iterator("tmp")) {
                filesystem::path graphFile (graph.path());
                string num = graphFile.filename();
                system(("cp tmp/"+num+" "+DIR+folderName+"/"+fileName+"/"+fileName+"_"+num).c_str());
            }
            filesystem::remove_all("tmp");
            cerr << "  Complete." << endl;
        }
    }
    return 0;
}
