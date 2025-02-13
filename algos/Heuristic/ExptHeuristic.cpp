#include <bits/stdc++.h>
#include <sys/stat.h>
#include <filesystem>
using namespace std;

string INPUT_DIR;
string INPUT_MERGED_DIR;
string RESULT_DIR;

int main() {
    string str;
    cin >> INPUT_DIR >> INPUT_MERGED_DIR >> RESULT_DIR;
    mkdir(RESULT_DIR.c_str(), 0777);
    while (cin >> str) {
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
                system(("./Heuristic < "+inputFile.u8string()+" > "+RESULT_DIR+folderName+"/"+subfolderName+"/"+fileName).c_str());
            }
            // cerr << "Solving " << subfolderName << "_merged......\n";
            // system(("./Heuristic < "+INPUT_MERGED_DIR+folderName+"/"+subfolderName+" > "+RESULT_DIR+folderName+"/"+subfolderName+"_merged").c_str());
        }
    }
    return 0;
}
