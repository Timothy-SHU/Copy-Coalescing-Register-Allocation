#include <bits/stdc++.h>
#include <sys/stat.h>
#include <filesystem>
using namespace std;

const string INPUT_DIR = "../../bench/SPEC2017/input/";
const string RESULT_DIR = "../../results/SPEC2017/Treewidth/";

int main() {
    string str;
    mkdir(RESULT_DIR.c_str(), 0777);
    while (cin >> str) {
        if (str == "all") {
            for (auto &folder : filesystem::directory_iterator(INPUT_DIR)) {
                filesystem::path inputFolder(folder.path());
                string folderName = inputFolder.filename();
                mkdir((RESULT_DIR+folderName).c_str(), 0777);
                for (auto &subfolder : filesystem::directory_iterator(INPUT_DIR+folderName)) {
                    filesystem::path inputSubfolder(subfolder.path());
                    string subfolderName = inputSubfolder.filename();
                    mkdir((RESULT_DIR+folderName+"/"+subfolderName).c_str(), 0777);
                    for (auto &file : filesystem::directory_iterator(INPUT_DIR+folderName+"/"+subfolderName)) {
                        cerr << "Solving " << file.path() << "......\n";
                        filesystem::path inputFile(file.path());
                        string fileName = inputFile.filename();
                        system(("./Treewidth < "+inputFile.u8string()+" > "+RESULT_DIR+folderName+"/"+subfolderName+"/"+fileName).c_str());
                    }
                }
            }
            break;
        } else {
            string folderName = str;
            mkdir((RESULT_DIR+folderName).c_str(), 0777);
            for (auto &subfolder : filesystem::directory_iterator(INPUT_DIR+folderName)) {
                filesystem::path inputSubfolder(subfolder.path());
                string subfolderName = inputSubfolder.filename();
                mkdir((RESULT_DIR+folderName+"/"+subfolderName).c_str(), 0777);
                for (auto &file : filesystem::directory_iterator(INPUT_DIR+folderName+"/"+subfolderName)) {
                    cerr << "Solving " << file.path() << "......\n";
                    filesystem::path inputFile(file.path());
                    string fileName = inputFile.filename();
                    system(("./Treewidth < "+inputFile.u8string()+" > "+RESULT_DIR+folderName+"/"+subfolderName+"/"+fileName).c_str());
                }
            }
        }
    }
    return 0;
}
