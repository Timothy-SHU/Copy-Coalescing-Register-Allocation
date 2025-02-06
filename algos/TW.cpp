#include <bits/stdc++.h>
using namespace std;

const int MAX_N = 500000;
typedef pair <int, int> pii;

int n, m, k, TL = 1;
int l, tw;
vector <pii> G[MAX_N];
vector <vector <int>> T;
vector <vector <int>> bag;

bool loadGraph(string loc) {
    ifstream inputFile(loc);
    if (inputFile.is_open()) {
        inputFile >> n >> m >> k;
        for (int i = 1, l, x; i <= n; i++) {
            inputFile >> l;     // CFG
            while (l--) inputFile >> x;
            inputFile >> l;     // LiveIn
            if (l > k) return false;
            while (l--) inputFile >> x;
            inputFile >> l;     // LiveOut
            if (l > k) return false;
            while (l--) inputFile >> x;
        }
        inputFile >> n;
        cerr << n << endl;
        for (int u = 1, v, l; u <= n; u++) {
            inputFile >> l;
            while (l--) {
                inputFile >> v;
                G[u].push_back(make_pair(v, -1));
            }
        }
        inputFile >> m;
        for (int i = 0, u, v, w; i < m; i++) {
            inputFile >> u >> v >> w;
            G[u].push_back(make_pair(v, w));
            if (u != v)
                G[v].push_back(make_pair(u, w));
        }
        m = 0;
        for (int u = 1; u <= n; u++)
            for (pii p : G[u])
                m += (u <= p.first);
    } else {
        cerr << "Unable to open input file!\n";
        return false;
    }
    return true;
}

void genDecomp() {
    ofstream graphFile("../graph.txt");
    if (graphFile.is_open()) {
        graphFile << "p tw " << n << " " << m << "\n";
        for (int u = 1; u <= n; u++)
            for (pii p : G[u]) if (u <= p.first)
                graphFile << u << ' ' << p.first << "\n"; 
    } else
        cerr << "Unable to open file 'graph.txt'!\n";
    graphFile.close();

    cerr << "TL = " << TL << ". Solving graph.txt... ";
    system("../pace17/flow_cutter_pace17 < ../graph.txt > ../tree.txt &");
    sleep(TL);
    system("pkill -INT -f ../pace17/flow_cutter_pace17");
    cerr << "Completed.\n";

    std::ifstream treeFile("../tree.txt");
    if (treeFile.is_open()) {
        std::string str;
        while (treeFile >> str && str != "td") ;
        treeFile >> l >> tw >> n;
        if (tw > 0) tw--;
        std::getline(treeFile, str);
        for (int i = 0; i < l; i++) {
            bag.push_back(std::vector <int> {});
            T.push_back(std::vector <int> {});
        }
        for (int i = 0; i < l; i++) {
            std::getline(treeFile, str);
            size_t pos = str.find(" ");
            str.erase(0, pos+1);
            pos = str.find(" ");
            int bagID = std::stoi(str.substr(0, pos));
            str.erase(0, pos+1);
            do {
                pos = str.find(" ");
                bag[bagID].push_back(std::stoi(str.substr(0, pos)));
                str.erase(0, pos+1);
            } while (pos != std::string::npos);
        }
        for (int i = 1, u, v; i < l; i++) {
            treeFile >> u >> v;
            T[v].push_back(u);
        }
    } else
        cerr << "Unable to open file 'tree.txt'!\n";
    treeFile.close();

    cerr << l << " bags, tw = " << tw << endl;
    /*
    for (int u = 1; u <= l; u++) {
        cerr << "Bag " << u << ": ";
        if (bag[u].empty()) cerr << "empty";
        for (int x : bag[u]) cerr << x << " ";
        cerr << " ---- child: ";
        if (T[u].empty()) cerr << "none";
        for (int v : T[u]) cerr << v << " ";
        cerr << endl;
    }
    */
}

vector <int> DFS(int u) {
    vector <int> dp(1<<bag[u].size());
    return dp;
}

int main() {
    if (!loadGraph("pad.ll_53"))
        return 0;
    genDecomp();
    return 0;
}
