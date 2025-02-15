#include <bits/stdc++.h>
using namespace std;
typedef pair <int, int> pii;
const int SOLVER_TIME_LIMIT = 1;

int numVar, numReg, numBag, tw;
vector <vector <int>> H;
vector <vector <pii>> A;
vector <pii> TreeEdge;
vector <vector <int>> Bag;
vector <vector <int>> Tree;

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
    system("rm graph.txt tree.txt");

    // cerr << " [" << numBag << " bags, tw = " << tw << "]\n";
    cout << tw << endl;
}

void niceDecomp() {
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

vector <int> color;
vector <bool> mark;
map <int, vector <int>> witness;

map <int, int> getAlloc(int s, const vector <int> &b) {
    map <int, int> alloc;
    for (int x : b)
        alloc[x] = s%numReg, 
        s /= numReg;
    return alloc;
}

int getCompatible(map <int, int> alloc, const vector <int> &b) {
    int s = 0;
    for (int i = (int)b.size()-1; i >= 0; i--)
        if (alloc.find(b[i]) != alloc.end())
            s = s*numReg+alloc[b[i]];
        else
            cerr << "E: Error in finding compatible state";
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

void DFS(int u, vector <int> &f) {
    vector <pii> curH;
    vector <pair <pii, int>> curA;

    mark[u] = true;
    int numChild = 0, v = -1;
    for (int i = 0; i < (int)Tree[u].size(); i++)
        if (!mark[Tree[u][i]]) v = Tree[u][i], numChild++;
    int STA = 1;
    for (int i = 0; i < (int)Bag[u].size(); i++)
        STA *= numReg;
    f.resize(STA, 0);

    if (numChild == 0) {                                    // Leaf Bag
        getAllEdges(Bag[u], curH, curA);
        for (int s = 0; s < STA; s++) {
            map <int, int> alloc = getAlloc(s, Bag[u]);
            for (pii &e : curH)
                if (alloc[e.first] == alloc[e.second])
                    { f[s] = -1; break; }
            if (f[s] == -1) continue;
            for (pair <pii, int> &e : curA)
                if (alloc[e.first.first] == alloc[e.first.second])
                    f[s] += e.second;
        }
    } else if (numChild == 1) {
        if (Bag[u].size() > Bag[v].size()) {            // Introduce Bag
            vector <int> delta;
            for (int x : Bag[u])
                if (find(Bag[v].begin(), Bag[v].end(), x) == Bag[v].end())
                    delta.push_back(x);
            getRelevantEdges(delta, Bag[v], curH, curA);
            vector <int> g; DFS(v, g);
            for (int s = 0; s < STA; s++) {
                map <int, int> alloc = getAlloc(s, Bag[u]);
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
        } else if (Bag[u].size() < Bag[v].size()) {     // Forget Bag
            vector <int> g; DFS(v, g);
            for (int s = 0; s < STA; s++) f[s] = -1;
            witness[u] = vector <int> (), witness[u].resize(STA, -1);
            for (int t = 0; t < (int)g.size(); t++) {
                map <int, int> alloc = getAlloc(t, Bag[v]);
                int s = getCompatible(alloc, Bag[u]);
                if (f[s] < g[t]) f[s] = g[t], witness[u][s] = t;
            }
        } else DFS(v, f);                               // Dummy Bag
    } else {                                            // Merge Bag
        for (int v : Tree[u]) if (Bag[u] != Bag[v] && !mark[v])
            cerr << "E: Merge bag " << u << " is different from child " << v << "!\n";
        getAllEdges(Bag[u], curH, curA);
        for (int v : Tree[u]) if (!mark[v]){
            vector <int> g; DFS(v, g);
            for (int s = 0; s < STA; s++) {
                map <int, int> alloc = getAlloc(s, Bag[u]);
                int t = getCompatible(alloc, Bag[v]);
                if (s != t) cerr << "E: States of merge bag " << u << "doesn't match child " << v << "!\n";
                if (f[s] == -1 || g[t] == -1) f[s] = -1;
                else f[s] += g[t];
            }
        }
        for (int s = 0; s < STA; s++) if (f[s] != -1) {
            map <int, int> alloc = getAlloc(s, Bag[u]);
            for (pair <pii, int> &e : curA)
                if (alloc[e.first.first] == alloc[e.first.second])
                    f[s] -= e.second*(numChild-1);
        }
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
    map <int, int> alloc = getAlloc(s, Bag[u]);
    for (pii p : alloc)
        if (color[p.first] != -1 && color[p.first] != p.second)
            cerr << "E: Color mismatch of node " << p.first << " during reconstruction!\n";
        else color[p.first] = p.second;
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

    cerr << numBag << endl;
    niceDecomp();
    cerr << numBag << endl;
    map <int, int> cnt;
    int cntMerge = 0;
    for (int i = 1; i <= numBag; i++) {
        cnt[Bag[i].size()]++;
        if (Tree[i].size() > 2) cntMerge++;
    }
    for (pii p : cnt) cerr << p.first << ' ' << p.second << endl;
    cout << cntMerge << endl;
    return 0;

    // printTree();

   
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

    if (ans == -1) { puts("-1"); return 0; }

    double DPTime = 1.0*(clock()-prev)/CLOCKS_PER_SEC;
    // cerr << "DP runtime: " << DPTime << " s.\n";

    int totalWeight = 0, validWeight = 0;
    // for (pii e : H)
    //     if (color[e.first] == color[e.second])
    //         cerr << "E: " << e.first << " and " << e.second << " are of the same color!\n";
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
