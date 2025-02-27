#include <bits/stdc++.h>
#include <iomanip>
using namespace std;

string RESULT_DIR = "SPEC2017/";

int main() {
    ifstream configFile("config.txt");

    string str;
    while (configFile >> str) {
        if (str[0] == '#') continue;
        string folderName = str+"/";
        int numGraph = 0, totalSize = 0, mxSize = 0, totalAffDeg = 0, mxTW = 0;
        long long HeuristicAns = 0, ILPAns = 0, TreewidthAns = 0, totalWeight = 0;
        double HeuristicTime = 0, ILPTime = 0, TreewidthTime = 0, TreewidthDecompTime = 0;
        for (auto &file : filesystem::directory_iterator(RESULT_DIR+"Heuristic/run-00/"+folderName)) {
            int n, tw = 0, numRuns; long long ans, tot;
            double avgAff, runtime, decomptime;
            filesystem::path inputFile(file.path());
            string fileName = inputFile.filename();

            ifstream GraphStat(file.path());
            GraphStat >> n >> avgAff >> ans >> tot;
            numGraph++, totalSize += n, mxSize = max(mxSize, n);
            totalAffDeg += (int)(n*avgAff), totalWeight += tot;

            numRuns = 0;
            long long curHeuristicAns = 0;
            double curHeuristicTime = 0;
            for (auto &run : filesystem::directory_iterator(RESULT_DIR+"Heuristic")) {
                numRuns++, ans = tot = runtime = 0;
                ifstream HeuristicRes(run.path().u8string()+"/"+folderName+fileName);
                HeuristicRes >> n >> avgAff >> ans >> tot >> runtime;
                curHeuristicAns = ans, curHeuristicTime += runtime;
            }
            HeuristicAns += curHeuristicAns, HeuristicTime += curHeuristicTime/numRuns;

            numRuns = 0;
            long long curILPAns = 0;
            double curILPTime = 0;
            for (auto &run : filesystem::directory_iterator(RESULT_DIR+"ILP")) {
                numRuns++, ans = tot = runtime = 0;
                ifstream ILPRes(run.path().u8string()+"/"+folderName+fileName);
                ILPRes >> n >> avgAff >> ans >> tot >> runtime;
                curILPAns = ans, curILPTime += runtime;
            }
            ILPAns += curILPAns, ILPTime += curILPTime/numRuns;

            numRuns = 0;
            long long curTreewidthAns = 0; bool isAnomaly = false;
            double curTreewidthTime = 0, curTreewidthDecompTime = 0;
            for (auto &run : filesystem::directory_iterator(RESULT_DIR+"Treewidth")) {
                numRuns++, ans = tot = runtime = 0;
                ifstream TreewidthRes(run.path().u8string()+"/"+folderName+fileName);
                TreewidthRes >> n >> avgAff >> tw >> ans >> tot >> runtime >> decomptime;
                mxTW = max(mxTW, tw), curTreewidthAns = ans;
                curTreewidthTime += runtime, curTreewidthDecompTime += decomptime;

                int firstCol = -1; TreewidthRes >> firstCol;
                if (n > 0 && firstCol == -1) isAnomaly = true;
            }
            TreewidthAns += curTreewidthAns;
            TreewidthTime += curTreewidthTime/numRuns;
            TreewidthDecompTime += curTreewidthDecompTime/numRuns;

            if (isAnomaly)
                cerr << "Treewidth allocation anomaly at "+folderName+fileName+"!\n";
            if (curILPAns != curTreewidthAns)
                cerr << "Different answers of ILP and Treewidth at "+folderName+fileName+"!\n";
            if (curTreewidthDecompTime/numRuns > 1)
                cerr << "Tree decomp running slow (" << curTreewidthDecompTime/numRuns << "s) on "+folderName+fileName+"!\n";
        }
        cout << str+": " << numGraph << " graphs, " << totalSize << " nodes, ";
        cout << "max |V| = " << mxSize << ", avg |V| = " << 1.0*totalSize/numGraph << ", ";
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
        cout << "total decomp overhead = " << setprecision(4) << TreewidthDecompTime << ".\n";
        cout << endl;
    }
    return 0;
}
