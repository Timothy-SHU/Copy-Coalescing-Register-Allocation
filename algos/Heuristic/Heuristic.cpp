#include <bits/stdc++.h>
#include <queue>
using namespace std;
typedef long long lnt;
typedef pair <int, int> pii;
typedef pair <lnt, int> pli;
typedef pair <int, lnt> pil;
typedef pair <int, double> pid;
typedef pair <pii, lnt> edge;
const double alpha = 0.1;   // Parameter in computing color priority

int numVar, numReg;
lnt totalWeight = 0;
vector <vector <int>> H;
vector <vector <pil>> A;

int numChunk;
vector <int> fa, rk;
vector <lnt> cost;
vector <bool> isActive;
vector <set <int>> chunk;
priority_queue <pli> priQue;
int getfa(int x) { return x == fa[x] ? x : (x = getfa(fa[x])); }
void mergeChunks(int x, int y) {
    x = getfa(x), y = getfa(y);
    if (rk[x] < rk[y]) swap(x, y);
    if (rk[x] == rk[y]) rk[x]++;
    fa[y] = x, chunk[x].merge(chunk[y]);
}

vector <edge> aff;
bool cmpAff(edge &a, edge &b) { return a.second > b.second; }
bool loadGraph() {
    int n, m, k, l; bool ret = true;
    cin >> n >> m >> k, numReg = k;
    for (int i = 1, x; i <= n; i++) {
        cin >> l;     // CFG
        while (l--) cin >> x;
        cin >> l;     // LiveIn
        if (l > k) ret = false;
        while (l--) cin >> x;
        cin >> l;     // LiveOut
        if (l > k) ret = false;
        while (l--) cin >> x;
    }
    cin >> n, numVar = n;
    H.resize(numVar+5), A.resize(numVar+5);
    for (int u = 1, v; u <= n; u++) {
        cin >> l;
        while (l--)
            cin >> v, H[u].push_back(v);
    }
    cin >> m;
    for (int i = 0, u, v; i < m; i++) {
        lnt w; cin >> u >> v >> w;
        A[u].push_back(make_pair(v, w));
        A[v].push_back(make_pair(u, w));
        aff.push_back(make_pair(make_pair(u, v), w));
        totalWeight += w;
    }
    cout << n << " " << 2.0*m/n << endl;
    return ret;
}

void initChunks() {
    numChunk = numVar;
    for (int i = 0; i <= numChunk; i++)
        fa.push_back(i), rk.push_back(0), cost.push_back(0), 
        isActive.push_back(false), chunk.push_back(set <int> ({i}));
    sort(aff.begin(), aff.end(), cmpAff);
    for (edge &e : aff) {
        int u = e.first.first, v = e.first.second;
        u = getfa(u), v = getfa(v);
        if (u == v) continue;
        bool noConflict = true;
        for (int x : chunk[u]) {
            for (int y : H[x])
                if (chunk[v].find(y) != chunk[v].end())
                    { noConflict = false; break; }
            if (!noConflict) break;
        }
        if (!noConflict) continue;
        mergeChunks(u, v);
    }

    for (int u = 1; u <= numVar; u++)
        for (int v : H[u]) if (getfa(u) == getfa(v))
            cerr << "E: Interferenced " << u << " and " << v << " are in the same initial chunk!" << endl;

    for (edge &e : aff) {
        int u = e.first.first, v = e.first.second;
        u = getfa(u), v = getfa(v);
        if (u == v) cost[u] += e.second;
    }
    for (int i = 1; i <= numChunk; i++) if (getfa(i) == i)
        isActive[i] = true, priQue.push(make_pair(cost[i], i));

    /*
    cerr << "------ Initial Chunks ------" << endl;
    for (int i = 1; i <= numChunk; i++) if (getfa(i) == i) {
        cerr << "Chunk " << i << " (" << cost[i] << ") :";
        for (int j : chunk[i]) cerr << " " << j;
        cerr << endl;
    }
    */
    /* Note: this debug output will clear the priority queue!
    while (!priQue.empty()) {
        int x = priQue.top().second; priQue.pop();
        cerr << "Chunk " << x << " (" << cost[x] << ") :";
        for (int y : chunk[x]) cerr << " " << y;
        cerr << endl;
    }
    */
}

vector <int> color, tempColor;
vector <bool> processed, fixated;
void initColors() {
    for (int i = 0; i <= numVar; i++)
        color.push_back(-1), tempColor.push_back(-1), fixated.push_back(false);
    for (int i = 0; i <= numChunk; i++) processed.push_back(false);
}
bool cmpCol(pid &a, pid &b) { return a.second > b.second; }
vector <double> computeColorPref(int cur) {
    vector <double> p;
    for (int c = 0; c < numReg; c++) p.push_back(0);
    for (int u : chunk[cur]) {
        int numAdm = 0; vector <bool> adm;
        for (int c = 0; c < numReg; c++) adm.push_back(true);
        for (int v : H[u]) if (color[v] != -1) adm[color[v]] = false;
        for (int c = 0; c < numReg; c++) if (adm[c]) numAdm++;
        for (int c = 0; c < numReg; c++) if (adm[c])
            p[c] += 1.0*(1+1.0*(numReg-numAdm)/numReg)/numReg;
    }
    for (int c = 0; c < numReg; c++) p[c] /= (double)chunk[cur].size();
    return p;
}
vector <int> computeColorOrder(int cur) {
    set <int> X;
    for (int u : chunk[cur]) for (int v : H[u])
        if (getfa(u) != getfa(v)) { if (!processed[getfa(v)]) X.insert(getfa(v)); }
        else cerr << "E: Interferenced " << u << " and " << v << " are in the same chunk!" << endl;

    vector <vector <double>> pref;
    pref.push_back(computeColorPref(cur));
    for (int i : X) pref.push_back(computeColorPref(i));

    vector <pid> prio;
    for (int c = 0; c < numReg; c++) {
        double p = pref[0][c], d = 1;
        for (int i = 1; i <= (int)X.size(); i++)
            d -= pref[i][c]/(double)X.size();
        prio.push_back(make_pair(c, (1-alpha)*p+alpha*d));
        // cerr << c << ' ' << p << ' ' << d << endl;
    }
    // cerr << endl;
    sort(prio.begin(), prio.end(), cmpCol);

    vector <int> order;
    for (pid p : prio)
        order.push_back(p.first);
    return order;
}

bool isLoose(int u) { return !fixated[u] && tempColor[u] == -1; }
int getColor(int u) { return tempColor[u] == -1 ? color[u] : tempColor[u]; }
void rollback(vector <int> &nodeList, int gauge) {
    if ((int)nodeList.size() <= gauge) return;
    for (int i = gauge; i < (int)nodeList.size(); i++)
        tempColor[nodeList[i]] = -1;
    nodeList.resize(gauge);
}
void commit(vector <int> nodeList) {
    for (int u : nodeList)
        color[u] = tempColor[u], tempColor[u] = -1;
}
vector <int> makeAvoidList(int u, int avoidCol) {
    int numAdm = 0; vector <bool> adm;
    vector <pid> prio; vector <int> neighCol;
    for (int c = 0; c < numReg; c++) adm.push_back(true);
    for (int v : H[u]) if (color[v] != -1) adm[color[v]] = false;
    for (int c = 0; c < numReg; c++) if (adm[c]) numAdm++;
    for (int c = 0; c < numReg; c++) {
        double p = 0;
        if (adm[c]) p = 1.0*(1+1.0*(numReg-numAdm)/numReg)/numReg;
        prio.push_back(make_pair(c, p)), neighCol.push_back(0);
    }

    int nLoose = 0;
    for (int v : H[u]) {
        int c = getColor(v);
        if (isLoose(v)) neighCol[c]++, nLoose++;
        else prio[c].second = 0;
    }
    if (nLoose > 0) {
        double factor = 1.0/nLoose;
        for (int c = 0; c < numReg; c++)
            prio[c].second *= (1-factor*neighCol[c]);
    }
    prio[avoidCol].second = 0;
    sort(prio.begin(), prio.end(), cmpCol);

    vector <int> list;
    for (pid p : prio)
        if (p.second > 1e-8)
            list.push_back(p.first);
    return list;
}
bool recolorNode(int u, vector <int> colorList, vector <int> &changed) {
    int gauge = (int)changed.size();
    for (int c : colorList) {
        bool success = true;
        tempColor[u] = c;
        changed.push_back(u);
        for (int v : H[u]) {
            if (getColor(v) == c) {
                success = false;
                if (isLoose(v)) {
                    vector <int> avoidList = makeAvoidList(v, c);
                    // for (int i = 0; i < numReg; i++)
                    //    if (i != c) avoidList.push_back(i);
                    success = recolorNode(v, avoidList, changed);
                }
            }
            if (!success) { rollback(changed, gauge); break; }
        }
        if (success) return true;
    }
    return false;
}
bool changeTo(int u, int tarCol) {
    if (color[u] == tarCol) return true;

    vector <bool> adm;
    for (int c = 0; c < numReg; c++) adm.push_back(true);
    for (int v : H[u]) if (color[v] != -1) adm[color[v]] = false;

    vector <int> changed;
    if (isLoose(u) && adm[tarCol] == true)
        if (recolorNode(u, vector <int> ({tarCol}), changed))
            { commit(changed); return true; }
    return false;
}

lnt DFS(int u, int tarCol, set <int> &curChunk, vector <bool> &visited) {
    lnt ret = 0;
    curChunk.insert(u), visited[u] = true;
    for (pil p : A[u]) {
        int v = p.first;
        if (!visited[u] && color[v] == tarCol)
            ret += p.second+DFS(v, tarCol, curChunk, visited);
    }
    return ret;
}
pair <set <int>, lnt> fragmentChunk(int cur, int tarCol) {
    set <int> localBestChunk;
    lnt localBestChunkCost = -1;
    vector <bool> visited;
    visited.resize(numVar, false);
    for (int u : chunk[cur])
        if (!visited[u] && color[u] == tarCol) {
            set <int> curChunk;
            lnt curCost = DFS(u, tarCol, curChunk, visited);
            if (localBestChunkCost == -1 || curCost > localBestChunkCost)
                localBestChunk = curChunk, localBestChunkCost = curCost;
        }
    return make_pair(localBestChunk, localBestChunkCost);
}

void recolorChunk(int cur) {
    int bestColor = -1;
    set <int> bestChunk;
    lnt bestChunkCost = -1;
    vector <int> order = computeColorOrder(cur);
    for (int c : order) {
        int nSuccessful = 0;
        for (int u : chunk[cur])
            if (changeTo(u, c))
                nSuccessful++, fixated[u] = true;
        for (int u : chunk[cur]) fixated[u] = false;
        if (nSuccessful == 0) continue;
        pair <set <int>, lnt> localBest = fragmentChunk(cur, c);
        set <int> localBestChunk = localBest.first;
        lnt localBestChunkCost = localBest.second;
        if (bestColor == -1 || localBestChunkCost > bestChunkCost)
            bestColor = c, bestChunk = localBestChunk, bestChunkCost = localBestChunkCost;
        if (nSuccessful == (int)chunk[cur].size()) break;
    }
    if (bestColor == -1) return;
    for (int u : bestChunk)
        changeTo(u, bestColor), fixated[u] = true;
    if (bestChunk.size() == chunk[cur].size()) return;
    int newChunk = ++numChunk;
    chunk.push_back(set <int> ()), fa.push_back(newChunk);
    for (int u : chunk[cur])
        if (bestChunk.find(u) == bestChunk.end())
            chunk[newChunk].insert(u), fa[u] = newChunk;
    cost.push_back(cost[cur]-bestChunkCost);
    isActive.push_back(true), isActive[cur] = false;
}

int main() {
    time_t prev = clock();
    if (!loadGraph()) { puts("-1"); return 0; }
    initChunks(), initColors();
    while (!priQue.empty()) {
        int cur = priQue.top().second; priQue.pop();
        while (!isActive[cur])
            cur = priQue.top().second, priQue.pop();
        recolorChunk(cur), processed[cur] = true;
    }
    lnt ans = 0;
    for (edge &e : aff) {
        int u = e.first.first, v = e.first.second;
        if (color[u] == color[v]) ans += e.second;
    }
    double runtime = 1.0*(clock()-prev)/CLOCKS_PER_SEC;
    for (int u = 1; u <= numVar; u++) for (int v : H[u])
        if (color[u] == color[v]) cerr << "E: " << u << " and " << v << " are colored the same!" << endl;
    cout << ans << " " << totalWeight << " " << runtime << endl;
    for (int i = 1; i <= numVar; i++) cout << color[i] << " "; cout << endl;
    return 0;
}
