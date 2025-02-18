#include <bits/stdc++.h>
#include <ilcplex/cplex.h>
#include <ilcplex/ilocplex.h>
using namespace std;
typedef pair <int, int> pii;
typedef pair <pii, int> edge;

int numVar, numReg;
vector <pii> H;
vector <edge> A;
vector <int> color;
int totalWeight = 0;
bool notOptimal = false;

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
    cin >> n, numVar = n, color.resize(numVar+1, -1);
    for (int u = 1, v; u <= n; u++)
        { cin >> l; while (l--) cin >> v, H.push_back(make_pair(u, v)); }
    cin >> m;
    for (int i = 0, u, v, w; i < m; i++) {
        cin >> u >> v >> w;
        A.push_back(make_pair(make_pair(u, v), w));
        totalWeight += w;
    }
    cout << n << " ";
    if (n == 0) cout << 0 << endl;
    else cout << 2.0*m/n << endl;
    return ret;
}

int solveILP() {
    IloEnv env;
    IloModel model(env);
    vector <vector <IloNumVar>> x;
    map <pii, IloNumVar> y;
    x.resize(numVar+1);
    for (int i = 1; i <= numVar; i++)
        for (int c = 0; c < numReg; c++)
            x[i].push_back(IloNumVar(env, 0, 1, ILOINT)), model.add(x[i][c]);
    for (edge e : A) if (y.find(e.first) == y.end())
        y[e.first] = IloNumVar(env, 0, 1, ILOINT), model.add(y[e.first]);
    for (int i = 1; i <= numVar; i++) {
        IloExpr constr(env);
        for (int c = 0; c < numReg; c++) constr += x[i][c];
        model.add(IloRange(env, 1, constr, 1));
    }
    for (pii e : H) for (int c = 0; c < numReg; c++)
        model.add(x[e.first][c]+x[e.second][c] <= 1);
    for (edge e : A) for (int c = 0; c < numReg; c++) {
        int i = e.first.first, j = e.first.second;
        model.add(y[e.first]-x[i][c]+x[j][c] >= 0);
        model.add(y[e.first]+x[i][c]-x[j][c] >= 0);
    }
    IloExpr obj(env);
    for (edge e : A)
        obj += e.second*y[e.first];
    model.add(IloMinimize(env, obj));

    IloCplex solver(model); int ret;
    solver.setOut(env.getNullStream());
    solver.setParam(IloCplex::Param::TimeLimit, 600);
    solver.solve();
    if (solver.getStatus() == IloAlgorithm::Status::Infeasible) ret = -1;
    else {
        if (solver.getStatus() != IloAlgorithm::Status::Optimal)
            notOptimal = true;
        ret = solver.getObjValue();
        for (int i = 1; i <= numVar; i++)
            for (int c = 0; c < numReg; c++)
                if (solver.getValue(x[i][c]) == 1)
                    { color[i] = c; break; }
    }
    env.end();
    return ret;
}

int main() {
    if (!loadGraph()) { puts("-1"); return 0; }
    time_t prev = clock();
    int ans = solveILP();
    double runtime = 1.0*(clock()-prev)/CLOCKS_PER_SEC;
    if (ans != -1) {
        for (pii e : H) if (color[e.first] == color[e.second])
            cerr << "E: " << e.first << " and " << e.second << " are colored the same!" << endl;
        int sum = 0;
        for (edge e : A) if (color[e.first.first] == color[e.first.second]) sum += e.second;
        if (sum != totalWeight-ans) cerr << "E: Answer doesn't match allocation!" << endl;
        cout << totalWeight-ans << " " << totalWeight << " " << runtime << endl;
        for (int i = 1; i <= numVar; i++) cout << color[i] << " "; cout << endl;
    } else puts("-1");
    if (notOptimal)
        cout << "Solver have not converged. Allocation not optimal!" << endl;
    return 0;
}
