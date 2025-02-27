#include <bits/stdc++.h>
#include <sys/stat.h>
#include <filesystem>
using namespace std;

string IR_DIR = "../bench/SPEC2017/-O1/";
string INPUT_DIR = "../bench/SPEC2017/input/";
string INPUT_PER_FUNC_DIR = "../bench/SPEC2017/input-per-func/";
string ANSWER_DIR = "../results/SPEC2017/";

int numNode, numVar, numReg = 8, numAff;
vector <vector <int>> H;
vector <pair <pair <int, int>, long long>> aff;

bool isFeasible(string path) {
    ifstream ansILP(path);
    int n; double avg; long long ans = -1;
    ansILP >> n >> avg >> ans;
    return ans != -1;
}

void loadGraph(string path) {
    int n, m, l;
    ifstream graphFile(path);
    graphFile >> n >> m >> numReg;
    for (int i = 1, x; i <= n; i++) {
        graphFile >> l; while (l--) graphFile >> x;
        graphFile >> l; while (l--) graphFile >> x;
        graphFile >> l; while (l--) graphFile >> x;
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
    for (int i = 0, u, v; i < m; i++) {
        long long w; graphFile >> u >> v >> w;
        aff.push_back(make_pair(make_pair(u+numVar, v+numVar), w));
    }
    numVar += n, numAff += m;
}

void outputGraph(string path) {
    ofstream outputFile(path);
    outputFile << "0 " << numVar << " " << numReg << endl << endl << numVar << endl;
    for (int i = 1; i <= numVar; i++) {
        outputFile << H[i].size();
        for (int x : H[i]) outputFile << " " << x;
        outputFile << endl;
    }
    outputFile << endl << numAff << endl;
    for (int i = 0; i < numAff; i++) {
        int u = aff[i].first.first;
        int v = aff[i].first.second;
        long long w = aff[i].second;
        outputFile << u << " " << v << " " << w << endl;
    }
}

void clearGraph() {
    numNode = numVar = numAff = 0;
    H.clear(), aff.clear();
}

int main() {
    ifstream configFile("config.txt");

    ANSWER_DIR += "Prelim/";
    mkdir(INPUT_DIR.c_str(), 0777);

    string str;
    configFile >> str;
    while (configFile >> str) {
        if (str[0] == '#') continue;
        string folderName = str+"/";
        mkdir((INPUT_DIR+folderName).c_str(), 0777);

        for (auto &file : filesystem::directory_iterator(IR_DIR+folderName+"units")) {
            cerr << "Preprocessing " << file.path() << "......";
            filesystem::path inputFile(file.path());
            string fileName = inputFile.filename().stem();

            H.push_back(vector <int> ());
            for (auto &graph : filesystem::directory_iterator(INPUT_PER_FUNC_DIR+folderName+fileName)) {
                string graphName = filesystem::path(graph.path()).filename().stem();
                if (isFeasible(ANSWER_DIR+folderName+fileName+"/"+graphName))
                    loadGraph(graph.path());
            }

            outputGraph(INPUT_DIR+folderName+fileName);
            clearGraph(), cerr << "  Complete." << endl;
        }

        cerr << "Preprocessing merged input for benchmark " << str << "......";
        H.push_back(vector <int> ());
        for (auto &file : filesystem::directory_iterator(IR_DIR+folderName+"units")) {
            filesystem::path inputFile(file.path());
            string fileName = inputFile.filename().stem();
            for (auto &graph : filesystem::directory_iterator(INPUT_PER_FUNC_DIR+folderName+fileName)) {
                string graphName = filesystem::path(graph.path()).filename().stem();
                if (isFeasible(ANSWER_DIR+folderName+fileName+"/"+graphName))
                    loadGraph(graph.path());
            }
        }
        outputGraph(INPUT_DIR+str+"_merged");
        clearGraph(), cerr << "  Complete." << endl;
    }
    return 0;
}
