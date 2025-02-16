#include <bits/stdc++.h>
using namespace std;
typedef pair <int, int> pii;
const int SOLVER_TIME_LIMIT = 60;

int numVar, numReg;
vector <vector <int>> H;
vector <vector <pii>> A;

bool loadGraph() {
    int n, m, k, l; bool flag = true;
    cin >> n >> m >> k, numReg = k;
    for (int i = 1, x; i <= n; i++) {
        cin >> l; while (l--) cin >> x;
        cin >> l; if (l > k) flag = false; while (l--) cin >> x;
        cin >> l; if (l > k) flag = false; while (l--) cin >> x;
    }
    int cntEdge = 0; cin >> n, numVar = n;
    H.resize(numVar+1), A.resize(numVar+1);
    for (int u = 1, v; u <= n; u++) {
        cin >> l, cntEdge += l;
        while (l--) cin >> v, H[u].push_back(v);
    }
    cin >> m, cntEdge = cntEdge/2+m;
    for (int i = 0, u, v, w; i < m; i++) {
        cin >> u >> v >> w;
        A[u].push_back(make_pair(v, w));
        if (u != v) A[v].push_back(make_pair(u, w));
    }

    ofstream graphFile("graph.txt");
    if (graphFile.is_open()) {
        graphFile << "p tw " << n << " " << cntEdge << endl;
        for (int u = 1; u <= numVar; u++)
            for (int v : H[u]) if (v >= u)
                graphFile << u << " " << v << endl;
        for (int u = 1; u <= numVar; u++)
            for (pii p : A[u]) if (p.first >= u)
                graphFile << u << " " << p.first << endl;
    } else {
        cerr << "E: Unable to open file 'graph.txt'!\n";
        return false;
    }
    graphFile.close();

    cout << numVar << " ";
    if (n == 0) cout << 0 << " ";
    else cout << 2.0*m/n << " ";

    return flag;
}

int numBag, tw;
vector <int> depth;
vector <int> bagType;
vector <pii> TreeEdge;
vector <vector <int>> Bag;
vector <vector <int>> Tree;

void genDecomp() {
    // cerr << "Time Limit = " << SOLVER_TIME_LIMIT << ". Solving graph.txt... ";
    system("../pace17/flow_cutter_pace17 < graph.txt > tree.txt &");
    sleep(SOLVER_TIME_LIMIT);
    system("pkill -INT -f ../pace17/flow_cutter_pace17");
    // cerr << "Completed.";

    std::ifstream treeFile("tree.txt");
    if (treeFile.is_open()) {
        std::string str; int l;
        while (treeFile >> str && str != "td") ;
        treeFile >> numBag >> tw >> l;
        if (tw > 0) tw--;
        Tree.resize(numBag+1);
        Bag.resize(numBag+1);
        std::getline(treeFile, str);
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
            treeFile >> u >> v, TreeEdge.push_back(make_pair(u, v)), 
            Tree[u].push_back(v), Tree[v].push_back(u);
    } else
        cerr << "E: Unable to open file 'tree.txt'!\n";
    treeFile.close();
    system("rm graph.txt tree.txt");

    // cerr << " [" << numBag << " bags, tw = " << tw << "]\n";
    cout << tw << endl;
}

void getDepth(int u, int d) {
    depth[u] = d; int cntChild = 0;
    for (int v : Tree[u]) if (depth[v] == -1)
        getDepth(v, d+1), cntChild++;
    bagType[u] = cntChild;
}

void niceDecomp() {
    depth.resize(numBag+1, -1);
    bagType.resize(numBag+1, 0);
    for (int i = 1; i <= numBag; i++)
        if (depth[i] == -1) getDepth(i, 0);

    Tree.clear(), Tree.resize(numBag+1);
    for (pii e : TreeEdge) {
        int u = e.first, v = e.second;
        if (depth[u] > depth[v]) swap(u, v);
        if (Bag[u] == Bag[v])
            { Tree[u].push_back(v); continue; }

        int mid = ++numBag;
        Bag.push_back(vector <int> ());
        Tree.push_back(vector <int> ());
        for (int x : Bag[v])
            if (find(Bag[u].begin(), Bag[u].end(), x) != Bag[u].end())
                Bag[mid].push_back(x);
        bagType.push_back(1), Tree[mid].push_back(v);
        if (bagType[u] < 2) Tree[u].push_back(mid);
        else {
            int cpy = ++numBag;
            Tree.push_back(vector <int> ());
            Bag.push_back(Bag[u]), bagType.push_back(1);
            Tree[u].push_back(cpy), Tree[cpy].push_back(mid);
        }
    }
}

void printTree() {
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
void printTreeStat() {
    cerr << numBag << " bags:" << endl;
    vector <int> cnt(tw+2);
    int cntMerge = 0;
    for (int i = 1; i <= numBag; i++) {
        cnt[Bag[i].size()]++;
        if (Tree[i].size() > 2) cntMerge++;
    }
    for (int i = 0; i <= tw+1; i++)
        cerr << cnt[i] << " bags of size " << i << ";" << endl;
    cerr << cntMerge << " merge bags." << endl;
}

vector <int> color;
vector <bool> mark;
unordered_map <int, vector <int>> witness;

unordered_map <int, int> getAlloc(int s, const vector <int> &b) {
    unordered_map <int, int> alloc;
    for (int x : b)
        alloc[x] = s%numReg, 
        s /= numReg;
    return alloc;
}
int getCompatible(unordered_map <int, int> &alloc, const vector <int> &b) {
    int s = 0;
    for (int i = (int)b.size()-1; i >= 0; i--)
        s = s*numReg+alloc[b[i]];
    return s;
}

void getAllEdges(const vector <int> &b, vector <pii> &curH, vector <pair <pii, int>> &curA) {
    for (int x : b) for (int y : H[x])
        if (x <= y && find(b.begin(), b.end(), y) != b.end())
            curH.push_back(make_pair(x, y));
    for (int x : b) for (pii p : A[x]) {
        int y = p.first, w = p.second;
        if (x <= y && find(b.begin(), b.end(), y) != b.end())
            curA.push_back(make_pair(make_pair(x, y), w));
    }
}
void getRelevantEdges(const vector <int> &d, const vector <int> &b, vector <pii> &curH, vector <pair <pii, int>> &curA) {
    getAllEdges(d, curH, curA);
    for (int x : d) for (int y : H[x])
        if (find(b.begin(), b.end(), y) != b.end())
            curH.push_back(make_pair(x, y));
    for (int x : d) for (pii p : A[x]) {
        int y = p.first, w = p.second;
        if (find(b.begin(), b.end(), y) != b.end())
            curA.push_back(make_pair(make_pair(x, y), w));
    }
}

// int operation_count = 0;
void DFS(int u, vector <int> &f) {
    vector <pii> curH;
    vector <pair <pii, int>> curA;

    mark[u] = true;
    int STA = 1;
    for (int i = 0; i < (int)Bag[u].size(); i++)
        STA *= numReg;
    f.resize(STA, 0);

    if (bagType[u] == 0) {                                    // Leaf Bag
        getAllEdges(Bag[u], curH, curA);
        for (int s = 0; s < STA; s++) {
            unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
            for (pii &e : curH)
                if (alloc[e.first] == alloc[e.second])
                    { f[s] = -1; break; }
            if (f[s] == -1) continue;
            for (pair <pii, int> &e : curA)
                if (alloc[e.first.first] == alloc[e.first.second])
                    f[s] += e.second;
        }
        // cerr << "Leaf " << u << ' ' << Bag[u].size() << ' ' << STA << ' ' << curH.size()+curA.size() << ' ';
        // cerr << STA*(curH.size()+curA.size()) << endl;
        // operation_count += STA*(curH.size()+curA.size());
    } else if (bagType[u] == 1) {
        int v = Tree[u][0];
        if (Bag[u].size() > Bag[v].size()) {            // Introduce Bag
            vector <int> delta;
            for (int x : Bag[u])
                if (find(Bag[v].begin(), Bag[v].end(), x) == Bag[v].end())
                    delta.push_back(x);
            getRelevantEdges(delta, Bag[v], curH, curA);
            vector <int> g; DFS(v, g);
            for (int s = 0; s < STA; s++) {
                unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
                for (pii &e : curH)
                    if (alloc[e.first] == alloc[e.second])
                        { f[s] = -1; break; }
                if (f[s] == -1) continue;
                f[s] = g[getCompatible(alloc, Bag[v])];
                if (f[s] == -1) continue;
                for (pair <pii, int> &e : curA)
                    if (alloc[e.first.first] == alloc[e.first.second])
                        f[s] += e.second;
            }
            // cerr << "Intro " << u << ' ' << Bag[u].size() << ' ' << STA << ' ' << curH.size()+curA.size() << ' ';
            // cerr << Bag[u].size()*Bag[v].size()+STA*(curH.size()+curA.size()) << endl;
            // operation_count += Bag[u].size()*Bag[v].size()+STA*(curH.size()+curA.size());
        } else if (Bag[u].size() < Bag[v].size()) {     // Forget Bag
            vector <int> g; DFS(v, g);
            for (int s = 0; s < STA; s++) f[s] = -1;
            witness[u] = vector <int> (), witness[u].resize(STA, -1);
            for (int t = 0; t < (int)g.size(); t++) {
                unordered_map <int, int> alloc = getAlloc(t, Bag[v]);
                int s = getCompatible(alloc, Bag[u]);
                if (f[s] < g[t]) f[s] = g[t], witness[u][s] = t;
            }
            // cerr << "Forget " << u << ' ' << Bag[u].size() << ' ' << Bag[v].size() << ' ' << g.size() << ' ';
            // cerr << (Bag[u].size()+Bag[v].size())*g.size() << endl;
            // operation_count += (Bag[u].size()+Bag[v].size())*g.size();
        } else DFS(v, f);                               // Dummy Bag
    } else {                                            // Merge Bag
        // for (int v : Tree[u]) if (Bag[u] != Bag[v])
        //     cerr << "E: Merge bag " << u << " is different from child " << v << "!\n";
        getAllEdges(Bag[u], curH, curA);
        for (int v : Tree[u]) {
            vector <int> g; DFS(v, g);
            for (int s = 0; s < STA; s++)
                if (f[s] == -1 || g[s] == -1) f[s] = -1;
                else f[s] += g[s];
        }
        for (int s = 0; s < STA; s++) if (f[s] != -1) {
            unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
            for (pair <pii, int> &e : curA)
                if (alloc[e.first.first] == alloc[e.first.second])
                    f[s] -= e.second*(bagType[u]-1);
        }
        // cerr << "Merge " << u << ' ' << Bag[u].size() << ' ' << Tree[u].size() << ' ' << STA << ' ' << curA.size() << ' ';
        // cerr << (Tree[u].size()+curA.size()+Bag[u].size())*STA << endl;
        // operation_count += (Tree[u].size()+curA.size()+Bag[u].size())*STA;
    }
    /*
    cerr << "Bag " << u << ": ";
    for (int x : Bag[u]) cerr << x << " "; cerr << endl;
    cerr << *max_element(f.begin(), f.end()) << endl;
    for (int s = 0; s < STA; s++) {
        map <int, int> alloc = getAlloc(s, Bag[u]);
        for (const pii &p : alloc) cerr << p.first << "(" << p.second << ") ";
        cerr << ": " << f[s] << endl;
    }
    cerr << endl;
    */
}

void traceCol(int u, int s, int fa) {
    unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
    // for (pii p : alloc)
    //     if (color[p.first] != -1 && color[p.first] != p.second)
    //         cerr << "E: Color mismatch of node " << p.first << " during reconstruction!\n";
    for (pii p : alloc) color[p.first] = p.second;
    if (witness.find(u) != witness.end()) {
        for (int v : Tree[u]) if (v != fa)
            traceCol(v, witness[u][s], u);
    } else {
        for (int v : Tree[u]) if (v != fa)
            traceCol(v, getCompatible(alloc, Bag[v]), u);
    }
}

int main() {
    clock_t prev = clock();
    bool isValid = loadGraph(); genDecomp();
    if (!isValid) { puts("-1"); return 0; }
    niceDecomp(); // printTree(); // printTreeStat();
   
    double decompTime = 1.0*(clock()-prev)/CLOCKS_PER_SEC+SOLVER_TIME_LIMIT;
    // cerr << "Decomposition runtime: " << decompTime  << " s.\n", prev = clock();

    mark.resize(numBag+1), color.resize(numVar+1, -1);
    int ans = 0;
    for (int i = 1; i <= numBag; i++) if (!mark[i]) {
        vector <int> dp; DFS(i, dp);
        vector <int>::iterator mx = max_element(dp.begin(), dp.end());
        if (ans == -1 || *mx == -1) ans = -1;
        else traceCol(i, (int)distance(dp.begin(), mx), 0), ans += *mx;
    }
    // cerr << operation_count << endl;

    if (ans == -1) { puts("-1"); return 0; }

    double DPTime = 1.0*(clock()-prev)/CLOCKS_PER_SEC;
    // cerr << "DP runtime: " << DPTime << " s.\n";

    int totalWeight = 0, validWeight = 0;
    for (int u = 1; u <= numVar; u++)
        for (int v : H[u]) if (color[u] == color[v])
            cerr << "E: " << u << " and " << v << " are of the same color!\n";
    for (int u = 1; u <= numVar; u++)
        for (pii p : A[u]) if (p.first >= u) {
            totalWeight += p.second;
            if (color[u] == color[p.first])
                validWeight += p.second;
        }
    if (validWeight != ans)
        cerr << "E: Answer doesn't match allocation!\n";
    cout << ans << " " << totalWeight << " ";
    cout << decompTime+DPTime << " " << SOLVER_TIME_LIMIT << endl;
    for (int i = 1; i <= numVar; i++) cout << color[i] << " "; cout << endl;
    return 0;
}
