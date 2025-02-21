#include <bits/stdc++.h>
#include <iomanip>
using namespace std;

int numReg = 6;
string RESULT_DIR = "SPEC2017/";

int main() {
    ifstream configFile("config.txt");
    configFile >> numReg;
    RESULT_DIR += "k="+to_string(numReg)+"/";

    string str;
    while (configFile >> str) {
        if (str[0] == '#') continue;
        string folderName = str+"/";
        int numGraph = 0, totalSize = 0, mxSize = 0, totalAffDeg = 0, mxTW = 0;
        long long HeuristicAns = 0, ILPAns = 0, TreewidthAns = 0, totalWeight = 0;
        double HeuristicTime = 0, ILPTime = 0, TreewidthTime = 0, TreewidthDecompTime = 0;
        // long long TreewidthOptAns = 0; double TreewidthOptTime = 0, TreewidthOptDecompTime = 0;
        for (auto &file : filesystem::directory_iterator(RESULT_DIR+"Heuristic/"+folderName)) {
            int n, tw = 0; long long ans, tot;
            double avgAff, runtime, decomptime;
            filesystem::path inputFile(file.path());
            string fileName = inputFile.filename();

            ans = tot = runtime = 0;
            ifstream HeuristicRes(file.path());
            HeuristicRes >> n >> avgAff >> ans >> tot >> runtime;
            numGraph++, totalSize += n, mxSize = max(mxSize, n);
            totalAffDeg += (int)(n*avgAff), totalWeight += tot;
            HeuristicAns += ans, HeuristicTime += runtime;

            ans = tot = runtime = 0;
            ifstream ILPRes(RESULT_DIR+"ILP/"+folderName+fileName);
            ILPRes >> n >> avgAff >> ans >> tot >> runtime;
            ILPAns += ans, ILPTime += runtime;
            int curILP = ans;

            ans = tot = runtime = 0;
            ifstream TreewidthRes(RESULT_DIR+"Treewidth/"+folderName+fileName);
            TreewidthRes >> n >> avgAff >> tw >> ans >> tot >> runtime >> decomptime;
            mxTW = max(mxTW, tw), TreewidthAns += ans, TreewidthTime += runtime, TreewidthDecompTime += decomptime;
            int curTW = ans;

            int col = -1; TreewidthRes >> col;
            if (n != 0 && col == -1) cerr << "Treewidth " << str+"/"+fileName << " anomaly!\n";
            if (curILP != curTW) cerr << "Different answer on "+str+"/"+fileName << endl;

            /*
            ans = tot = runtime = 0;
            ifstream TreewidthOptRes(RESULT_DIR+"Treewidth-opt/"+folderName+fileName);
            TreewidthOptRes >> n >> avgAff >> tw >> ans >> tot >> runtime >> decomptime;
            col = -1; TreewidthOptRes >> col;
            if (n != 0 && col == -1 && str != "502.gcc_r") cerr << "Treewidth-opt " << str+"/"+fileName << " anomaly!\n";
            mxTW = max(mxTW, tw), TreewidthOptAns += ans, TreewidthOptTime += runtime, TreewidthOptDecompTime += decomptime;
            */
        }
        cout << str+": " << numGraph << " graphs, " << totalSize << " nodes, max |V| = " << mxSize << ", ";
        cout << "avg AffDeg = " << 1.0*totalAffDeg/totalSize << ", max tw = " << mxTW << "." << endl;
        cout << right << setw(22) << "Heuristic: answer = " << HeuristicAns << ", ";
        cout << "ratio = " << left << setprecision(6) << 1.0*HeuristicAns/totalWeight << ", ";
        cout << "total runtime = " << setprecision(4) << HeuristicTime << ".\n";
        cout << right << setw(22) << "ILP: answer = " << ILPAns << ", ";
        cout << "ratio = " << left << setprecision(6) << 1.0*ILPAns/totalWeight << ", ";
        cout << "total runtime = " << setprecision(4) << ILPTime << ".\n";
        cout << right << setw(22) << "Treewidth: answer = " << TreewidthAns << ", ";
        cout << "ratio = " << left << setprecision(6) << 1.0*TreewidthAns/totalWeight << ", ";
        cout << "total runtime = " << setprecision(4) << TreewidthTime << ", ";
        cout << "total decomp time = " << setprecision(4) << TreewidthDecompTime << ".\n";
        /*
        cout << right << setw(22) << "Treewidth-opt: answer = " << TreewidthOptAns << ", ";
        cout << "ratio = " << left << setprecision(6) << 1.0*TreewidthOptAns/totalWeight << ", ";
        cout << "total runtime = " << setprecision(4) << TreewidthOptTime << ", ";
        cout << "total decomp time = " << setprecision(4) << TreewidthOptDecompTime << ".\n";
        */
        cout << endl;
    }
    return 0;
}
