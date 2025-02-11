#include <bits/stdc++.h>
#include <sys/stat.h>
#include <filesystem>
using namespace std;

const string DIR = "../bench/SPEC2017/input/";

int numNode, numVar, numReg, numAff;
vector <vector <int>> CFG, LiveIn, LiveOut, H;
vector <pair <pair <int, int>, int>> aff;

bool isValid(string path) {
    ifstream graphFile(path);
    int n, m, k; graphFile >> n >> m >> k;
    for (int i = 1, l, x; i <= n; i++) {
        graphFile >> l; while (l--) graphFile >> x;
        graphFile >> l; if (l > k) return false;
        while (l--) graphFile >> x;
        graphFile >> l; if (l > k) return false;
        while (l--) graphFile >> x;
    }
    return true;
}

void loadGraph(string path) {
    int n, m, k, l;
    ifstream graphFile(path);
    graphFile >> n >> m >> k, numReg = k;
    for (int i = 1, x; i <= n; i++) {
        CFG.push_back(vector <int> ());
        LiveIn.push_back(vector <int> ());
        LiveOut.push_back(vector <int> ());
        graphFile >> l; while (l--) graphFile >> x, CFG[numNode+i].push_back(numNode+x);
        graphFile >> l; while (l--) graphFile >> x, LiveIn[numNode+i].push_back(numVar+x);
        graphFile >> l; while (l--) graphFile >> x, LiveOut[numNode+i].push_back(numVar+x);
    }
    numNode += n;
    graphFile >> n;
    for (int u = 1, v; u <= n; u++) {
        H.push_back(vector <int> ());
        graphFile >> l;
        while (l--)
            graphFile >> v, H[u+numVar].push_back(v+numVar);
    }
    graphFile >> m;
    for (int i = 0, u, v, w; i < m; i++) {
        graphFile >> u >> v >> w;
        aff.push_back(make_pair(make_pair(u+numVar, v+numVar), w));
    }
    numVar += n, numAff += m;
}

void outputGraph(string folderName, string fileStem) {
    ofstream outputFile(DIR+folderName+"/"+fileStem);
    outputFile << numNode << " " << numVar << " " << numReg << endl;
    for (int i = 1; i <= numNode; i++) {
        outputFile << CFG[i].size();
        for (int x : CFG[i]) outputFile << " " << x;
        outputFile << endl;
        outputFile << LiveIn[i].size();
        for (int x : LiveIn[i]) outputFile << " " << x;
        outputFile << endl;
        outputFile << LiveOut[i].size();
        for (int x : LiveOut[i]) outputFile << " " << x;
        outputFile << endl;
    }
    outputFile << endl << numVar << endl;
    for (int i = 1; i <= numVar; i++) {
        outputFile << H[i].size();
        for (int x : H[i]) outputFile << " " << x;
        outputFile << endl;
    }
    outputFile << endl << numAff << endl;
    for (int i = 0; i < numAff; i++) {
        int u = aff[i].first.first;
        int v = aff[i].first.second;
        int w = aff[i].second;
        outputFile << u << " " << v << " " << w << endl;
    }
}

int main() {
    CFG.push_back(vector <int> ());
    LiveIn.push_back(vector <int> ());
    LiveOut.push_back(vector <int> ());
    H.push_back(vector <int> ());
    filesystem::remove_all(DIR);
    mkdir(DIR.c_str(), 0777);
    for (auto &folder : filesystem::directory_iterator("../bench/SPEC2017/-fno-inline_-Os_-S_-emit-llvm")) {
        filesystem::path inputFolder(folder.path());
        string folderName = inputFolder.filename();
        mkdir((DIR+folderName).c_str(), 0777);
        for (auto &file : filesystem::directory_iterator("../bench/SPEC2017/-fno-inline_-Os_-S_-emit-llvm/"+folderName+"/units")) {
            cerr << "Preprocessing " << file.path() << "......";
            filesystem::path inputFile(file.path());
            string fileStem = inputFile.filename().stem();
            mkdir("tmp/", 0777);
            system(("opt -load-pass-plugin ./libCC.so -passes=CC -disable-output "+inputFile.u8string()).c_str());
            for (auto &graph : filesystem::directory_iterator("tmp"))
                if (isValid(graph.path()))
                    loadGraph(graph.path());
            outputGraph(folderName, fileStem);
            filesystem::remove_all("tmp");
            cerr << "  Complete." << endl;
        }
    }
    return 0;
}
