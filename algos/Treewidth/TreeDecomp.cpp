#include <bits/stdc++.h>
using namespace std;
typedef long long lnt;
typedef pair <int, int> pii;

void printTree(const int numBag, const int tw, const vector <vector <int>> &Bag, const vector <vector <int>> &Tree) {
    cerr << numBag << " bags, tw = " << tw << endl;
    for (int u = 1; u <= numBag; u++) {
        cerr << "Bag " << u << ": ";
        if (Bag[u].empty()) cerr << "empty";
        for (int x : Bag[u]) cerr << x << " ";
        cerr << "---- Neighbors: ";
        for (int v : Tree[u]) cerr << v << " ";
        cerr << endl;
    }
}

bool loadGraph(int &numVar, int &numReg, set <pii> &H, map <pii, lnt> &A) {
    int n, m, k, l; bool flag = true;
    cin >> n >> m >> k, numReg = k;
    for (int i = 1, x; i <= n; i++) {
        cin >> l;     // CFG
        while (l--) cin >> x;
        cin >> l;     // LiveIn
        if (l > k) flag = false;
        while (l--) cin >> x;
        cin >> l;     // LiveOut
        if (l > k) flag = false;
        while (l--) cin >> x;
    }
    cin >> n, numVar = n;
    for (int u = 1, v; u <= n; u++) {
        cin >> l;
        while (l--) {
            cin >> v;
            if (u <= v)
                H.insert(make_pair(u, v));
        }
    }
    cin >> m;
    for (int i = 0, u, v, w; i < m; i++) {
        cin >> u >> v >> w;
        if (u > v) swap(u, v);
        if (A.find(make_pair(u, v)) == A.end())
            A[make_pair(u, v)] = w;
        else
            A[make_pair(u, v)] += w;
    }

    ofstream graphFile("graph.txt");
    if (graphFile.is_open()) {
        graphFile << "p tw " << n << " " << H.size()+A.size() << endl;
        for (const pii &e : H)
            graphFile << e.first << " " << e.second << endl;
        for (pair <const pii, lnt> &e : A)
            graphFile << e.first.first << " " << e.first.second << endl;
    } else {
        cerr << "E: Unable to open file 'graph.txt'!\n";
        return false;
    }
    graphFile.close();

    cout << numVar << " " << 2.0*m/n << " ";

    return flag;
}

void genDecomp(int &numBag, int &tw, vector <pii> &TreeEdge, vector <vector <int>> &Bag, int TL) {
    // cerr << "TL = " << TL << ". Solving graph.txt... ";
    system("../../pace17/flow_cutter_pace17 < graph.txt > tree.txt &");
    sleep(TL);
    system("pkill -INT -f ../../pace17/flow_cutter_pace17");
    // cerr << "Completed.";

    std::ifstream treeFile("tree.txt");
    if (treeFile.is_open()) {
        std::string str; int l;
        while (treeFile >> str && str != "td") ;
        treeFile >> numBag >> tw >> l;
        if (tw > 0) tw--;
        std::getline(treeFile, str);
        for (int i = 0; i <= numBag; i++)
            Bag.push_back(vector <int> {});
        for (int i = 1; i <= numBag; i++) {
            std::getline(treeFile, str);
            size_t pos = str.find(" ");
            str.erase(0, pos+1);
            pos = str.find(" ");
            if (pos == string::npos) continue;
            int bagID = stoi(str.substr(0, pos));
            str.erase(0, pos+1);
            do {
                pos = str.find(" ");
                Bag[bagID].push_back(stoi(str.substr(0, pos)));
                str.erase(0, pos+1);
            } while (pos != string::npos);
            sort(Bag[bagID].begin(), Bag[bagID].end());
            if (adjacent_find(Bag[bagID].begin(), Bag[bagID].end()) != Bag[bagID].end())
                cerr << "E: Duplicated elements in Bag " << bagID << "!\n";
        }
        for (int i = 1, u, v; i < numBag; i++)
            treeFile >> u >> v, TreeEdge.push_back(make_pair(u, v));
    } else
        cerr << "E: Unable to open file 'tree.txt'!\n";
    treeFile.close();

    // cerr << " [" << numBag << " bags, tw = " << tw << "]\n";
    system("rm graph.txt tree.txt");
}

void niceDecomp(int &numBag, vector <pii> &TreeEdge, vector <vector <int>> &Bag, vector <vector <int>> &Tree) {
    for (int i = 0; i <= numBag; i++)
        Tree.push_back(vector <int> ());
    for (pii e : TreeEdge) {
        int u = e.first, v = e.second;
        if (Bag[u] == Bag[v]) continue;
        int cur = ++numBag;
        Bag.push_back(Bag[u]);
        Tree.push_back(vector <int> ());
        Tree[u].push_back(cur), Tree[cur].push_back(u);

        for (int x : Bag[u])
            if (find(Bag[v].begin(), Bag[v].end(), x) == Bag[v].end()) {
                Bag.push_back(vector <int> ());
                Tree.push_back(vector <int> ());
                for (int y : Bag[cur])
                    if (y != x) Bag.back().push_back(y);
                numBag++;
                Tree[cur].push_back(numBag), Tree[numBag].push_back(cur);
                cur = numBag;
            }
        for (int x : Bag[v])
            if (find(Bag[u].begin(), Bag[u].end(), x) == Bag[u].end()) {
                Bag.push_back(Bag[cur]), Bag.back().push_back(x);
                sort(Bag.back().begin(), Bag.back().end());
                Tree.push_back(vector <int> ());
                numBag++;
                Tree[cur].push_back(numBag), Tree[numBag].push_back(cur);
                cur = numBag;
            }
        Tree[cur].push_back(v), Tree[v].push_back(cur);

        if (Bag[cur] != Bag[v])
            cerr << "E: Intermediate bag mismatch destination!\n" << u << " " << v << " " << cur << endl;
    }
}
