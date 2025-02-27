#include <bits/stdc++.h>
#include <htd/main.hpp>
#include <htd_io/main.hpp>
using namespace std;
typedef long long lnt;
typedef pair <int, int> pii;
double SOLVER_TIME_LIMIT = 1;

int numVar, numReg;
vector <vector <int>> H;
vector <vector <pii>> A;

unique_ptr <htd::LibraryInstance> manager(htd::createManagementInstance(htd::Id::FIRST));
htd::IMutableGraph * graph = manager->graphFactory().createInstance();

bool loadGraph() {
    int n, m, k, l; bool flag = true;
    cin >> n >> m >> k, numReg = k;
    for (int i = 1, x; i <= n; i++) {
        cin >> l; while (l--) cin >> x;
        cin >> l; if (l > k) flag = false; while (l--) cin >> x;
        cin >> l; if (l > k) flag = false; while (l--) cin >> x;
    }
    cin >> n, numVar = n;
    H.resize(numVar+1), A.resize(numVar+1);
    graph->addVertices(numVar);
    for (int u = 1, v; u <= n; u++)
        for (cin >> l; l > 0; l--)
            cin >> v, H[u].push_back(v), 
            graph->addEdge(u, v);
    cin >> m;
    for (int i = 0, u, v, w; i < m; i++) {
        cin >> u >> v >> w;
        A[u].push_back(make_pair(v, w));
        if (u != v) A[v].push_back(make_pair(u, w));
        graph->addEdge(u, v);
    }

    cout << numVar << " ";
    if (n == 0) cout << 0 << " ";
    else cout << 2.0*m/n << " ";

    return flag;
}

/* ============ Tree Decomposition ============ */
int numBag = 0, tw = -1, rt = -1;
vector <int> numChild;
vector <pii> TreeEdge;
vector <vector <int>> Bag;
vector <vector <int>> Tree;

void handleSignal(int sig) {
    switch (sig) {
        case SIGINT:
        case SIGTERM: manager->terminate(); break;
        default: break;
    }
    signal(sig, handleSignal);
}

bool genDecomp() {
    auto algo = htd::CombinedWidthMinimizingTreeDecompositionAlgorithm(manager.get());
    auto adaptive = new htd::AdaptiveWidthMinimizingTreeDecompositionAlgorithm(manager.get());

    auto algo1 = new htd::BucketEliminationTreeDecompositionAlgorithm(manager.get());
    algo1->setOrderingAlgorithm(new htd::MinDegreeOrderingAlgorithm(manager.get()));
    adaptive->addDecompositionAlgorithm(algo1);

    auto algo2 = new htd::BucketEliminationTreeDecompositionAlgorithm(manager.get());
    algo2->setOrderingAlgorithm(new htd::MinFillOrderingAlgorithm(manager.get()));
    adaptive->addDecompositionAlgorithm(algo2);

    auto algo3 = new htd::BucketEliminationTreeDecompositionAlgorithm(manager.get());
    algo3->setOrderingAlgorithm(
        new htd::MaximumCardinalitySearchOrderingAlgorithm(manager.get()));
    /*
    adaptive->addDecompositionAlgorithm(
        algo3, [](const auto &g, const auto &preprocessed) {
          HTD_UNUSED(g);
          return preprocessed.vertexCount() <= 10240;
        });
    */
    adaptive->setIterationCount(10);
    adaptive->setNonImprovementLimit(0);
    adaptive->setDecisionRounds(5);

    algo.addDecompositionAlgorithm(new htd::TrivialTreeDecompositionAlgorithm(manager.get()));
    algo.addDecompositionAlgorithm(adaptive);
    algo.setComputeInducedEdgesEnabled(false);

    auto preprocessor = htd::GraphPreprocessor(manager.get());
    preprocessor.setPreprocessingStrategy(3);
    preprocessor.setIterationCount(10);
    preprocessor.setNonImprovementLimit(0);

    auto preprocessed_graph = preprocessor.prepare(*graph);
    auto decomp = algo.computeDecomposition(*graph, *preprocessed_graph);

    htd::TreeDecompositionVerifier vfr;
    if (!vfr.verify(*graph, *decomp)) {
        std::srand(0);
        signal(SIGINT, handleSignal);
        signal(SIGTERM, handleSignal);

        htd::ITreeDecompositionAlgorithm *algo_iter = 
            manager->treeDecompositionAlgorithmFactory().createInstance();

        for (bool isValid = false; !isValid; ) {
            if (decomp != nullptr) delete decomp;
            decomp = algo_iter->computeDecomposition(*graph);
            isValid = vfr.verify(*graph, *decomp);
        }
    }

    unordered_map <htd::vertex_t, int> BagID;
    if (decomp != nullptr) {
        // htd_io::HumanReadableExporter exporter;
        // exporter.write(*decomp, *graph, cerr);

        for (htd::vertex_t v : decomp->vertices()) BagID[v] = ++numBag;
        rt = BagID[decomp->root()];
        tw = decomp->maximumBagSize()-1;
        if (tw == -1) tw = 0;

        Bag.resize(numBag+1), numChild.resize(numBag+1);
        for (htd::vertex_t v : decomp->vertices()) {
            int cur = BagID[v];
            numChild[cur] = decomp->childCount(v);
            for (int i = 0; i < decomp->childCount(v); i++)
                TreeEdge.push_back(make_pair(cur, BagID[decomp->childAtPosition(v, i)]));
            for (int x : decomp->bagContent(v)) Bag[cur].push_back(x);
            sort(Bag[cur].begin(), Bag[cur].end());
        }
        delete decomp;
    }
    delete graph;

    cout << tw << endl;
    return tw != -1;
}

void niceDecomp() {
    Tree.resize(numBag+1);
    for (pii e : TreeEdge) {
        int u = e.first, v = e.second;
        if (Bag[u] == Bag[v])
            { Tree[u].push_back(v); continue; }

        int mid = ++numBag;
        Bag.push_back(vector <int> ());
        Tree.push_back(vector <int> ());
        for (int x : Bag[v])
            if (find(Bag[u].begin(), Bag[u].end(), x) != Bag[u].end())
                Bag[mid].push_back(x);
        numChild.push_back(1), Tree[mid].push_back(v);
        if (numChild[u] < 2) Tree[u].push_back(mid);
        else {
            int cpy = ++numBag;
            Tree.push_back(vector <int> ());
            Bag.push_back(Bag[u]), numChild.push_back(1);
            Tree[u].push_back(cpy), Tree[cpy].push_back(mid);
        }
    }
    cerr << " [" << numVar << " nodes, " << numBag << " bags, tw = " << tw << "]";
}

void printTree() {
    cerr << numBag << " bags, tw = " << tw << endl;
    for (int u = 1; u <= numBag; u++) {
        cerr << "Bag " << u << ": ";
        if (Bag[u].empty()) cerr << "empty";
        for (int x : Bag[u]) cerr << x << " ";
        cerr << "---- Children: ";
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

/* =========== Generate Valid States ============ */
vector <lnt> state[16];
unordered_map <lnt, int> sta2idx[16];

void getStates(int cur, lnt sta, int mx, lnt unit) {
    sta2idx[cur][sta] = (int)state[cur].size();
    state[cur].push_back(sta);
    if (cur == tw+1) return;
    for (int c = 0; c < min(mx, numReg); c++)
        getStates(cur+1, sta+c*unit, mx, unit<<3);
    if (mx < numReg)
        getStates(cur+1, sta+mx*unit, mx+1, unit<<3);
}

/* ============ DP on Tree Decomp ============ */
vector <int> color;
unordered_map <int, vector <int>> witness;

unordered_map <int, int> getAlloc(lnt s, const vector <int> &b) {
    unordered_map <int, int> alloc;
    for (int x : b)
        alloc[x] = s&7, s >>= 3;
    return alloc;
}
lnt getCompatible(unordered_map <int, int> &alloc, const vector <int> &b) {
    lnt s = 0; int c = 0;
    vector <int> colMap(numReg, -1);
    for (int x : b)
        if (colMap[alloc[x]] == -1)
            colMap[alloc[x]] = c++;
    for (int i = (int)b.size()-1; i >= 0; i--)
        s = (s<<3)|colMap[alloc[b[i]]];
    return s;
}

void getAllEdges(const vector <int> &b, vector <pii> &curH, vector <pair <pii, int>> &curA) {
    for (int x : b) for (int y : H[x])
        if (x <= y && find(b.begin(), b.end(), y) != b.end())
            curH.push_back(make_pair(x, y));
    for (int x : b) for (pii p : A[x]) {
        int y = p.first; int w = p.second;
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
        int y = p.first; int w = p.second;
        if (find(b.begin(), b.end(), y) != b.end())
            curA.push_back(make_pair(make_pair(x, y), w));
    }
}

void DFS(int u, vector <int> &f) {
    vector <pii> curH;
    vector <pair <pii, int>> curA;

    f.resize(state[Bag[u].size()].size(), 0);

    if (numChild[u] == 0) {                             // Leaf Bag
        getAllEdges(Bag[u], curH, curA);
        for (int i = 0; i < (int)f.size(); i++) {
            lnt s = state[Bag[u].size()][i];
            unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
            for (pii &e : curH)
                if (alloc[e.first] == alloc[e.second])
                    { f[i] = -1; break; }
            if (f[i] == -1) continue;
            for (pair <pii, int> &e : curA)
                if (alloc[e.first.first] == alloc[e.first.second])
                    f[i] += e.second;
        }
    } else if (numChild[u] == 1) {
        int v = Tree[u][0];
        if (Bag[u].size() > Bag[v].size()) {            // Introduce Bag
            vector <int> delta;
            for (int x : Bag[u])
                if (find(Bag[v].begin(), Bag[v].end(), x) == Bag[v].end())
                    delta.push_back(x);
            getRelevantEdges(delta, Bag[v], curH, curA);
            vector <int> g; DFS(v, g);
            for (int i = 0; i < (int)f.size(); i++) {
                lnt s = state[Bag[u].size()][i];
                unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
                for (pii &e : curH)
                    if (alloc[e.first] == alloc[e.second])
                        { f[i] = -1; break; }
                if (f[i] == -1) continue;
                lnt t = getCompatible(alloc, Bag[v]);
                int j = sta2idx[Bag[v].size()][t];
                f[i] = g[j];
                if (f[i] == -1) continue;
                for (pair <pii, int> &e : curA)
                    if (alloc[e.first.first] == alloc[e.first.second])
                        f[i] += e.second;
            }
        } else if (Bag[u].size() < Bag[v].size()) {     // Forget Bag
            vector <int> g; DFS(v, g);
            fill(f.begin(), f.end(), -1);
            witness[u].resize((int)f.size(), -1);
            for (int j = 0; j < (int)g.size(); j++) {
                lnt t = state[Bag[v].size()][j];
                unordered_map <int, int> alloc = getAlloc(t, Bag[v]);
                lnt s = getCompatible(alloc, Bag[u]);
                int i = sta2idx[Bag[u].size()][s];
                if (f[i] < g[j]) f[i] = g[j], witness[u][i] = j;
            }
        } else DFS(v, f);                               // Dummy Bag
    } else {                                            // Merge Bag
        // for (int v : Tree[u]) if (Bag[u] != Bag[v])
        //     cerr << "E: Merge bag " << u << " is different from child " << v << "!\n";
        getAllEdges(Bag[u], curH, curA);
        for (int v : Tree[u]) {
            vector <int> g; DFS(v, g);
            for (int i = 0; i < (int)f.size(); i++)
                if (f[i] == -1 || g[i] == -1) f[i] = -1;
                else f[i] += g[i];
        }
        for (int i = 0; i < (int)f.size(); i++) if (f[i] != -1) {
            lnt s = state[Bag[u].size()][i];
            unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
            for (pair <pii, int> &e : curA)
                if (alloc[e.first.first] == alloc[e.first.second])
                    f[i] -= e.second*(numChild[u]-1);
        }
    }
    /*
    cerr << "Bag " << u << ": ";
    for (int x : Bag[u]) cerr << x << " "; cerr << " |  ";
    cerr << numChild[u] << " " << max_element(f.begin(), f.end())-f.begin() << " " << *max_element(f.begin(), f.end()) << endl;
    */
}

void traceCol(int u, int i) {
    lnt s = state[Bag[u].size()][i];
    unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
    vector <int> colMap(numReg, -1);
    vector <bool> isUsed(numReg, false);
    for (pii p : alloc) if (color[p.first] != -1)
        colMap[p.second] = color[p.first], isUsed[color[p.first]] = true;
    for (pii p : alloc) if (colMap[p.second] == -1)
        for (int c = 0; c < numReg; c++) if (!isUsed[c])
            { colMap[p.second] = c, isUsed[c] = true; break; }
    for (pii p : alloc) color[p.first] = colMap[p.second];
    if (witness.find(u) != witness.end()) {
        for (int v : Tree[u])
            traceCol(v, witness[u][i]);
    } else {
        for (int v : Tree[u]) {
            lnt t = getCompatible(alloc, Bag[v]);
            int j = sta2idx[Bag[v].size()][t];
            traceCol(v, j);
        }
    }
}

int main() {
    bool flag = loadGraph();
    clock_t prev = clock();
    flag &= genDecomp();
    if (!flag) { puts("-1"); return 0; }
    niceDecomp();
    double decomptime = 1.0*(clock()-prev)/CLOCKS_PER_SEC;
    // printTree();
    // printTreeStat();

    getStates(0, 0, 0, 1);
    vector <int> dp; DFS(rt, dp);
    int ans = *max_element(dp.begin(), dp.end());
    if (ans == -1) { puts("-1"); return 0; }
    color.resize(numVar+1, -1);
    traceCol(rt, (int)distance(dp.begin(), max_element(dp.begin(), dp.end())));

    if (ans == -1) { puts("-1"); return 0; }

    double runtime = 1.0*(clock()-prev)/CLOCKS_PER_SEC;

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
    if (validWeight != ans) cerr << "E: Answer doesn't match allocation!\n";
    cout << ans << " " << totalWeight << " ";
    cout << runtime << " " << decomptime << endl;
    for (int i = 1; i <= numVar; i++) cout << color[i] << " "; cout << endl;
    return 0;
}
