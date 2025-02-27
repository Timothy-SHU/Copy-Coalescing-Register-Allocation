#include <bits/stdc++.h>
using namespace std;

void process(ifstream &input, ofstream &output) {
    int n, k, u, v, w;
    vector <vector <int>> H;
    vector <pair <pair <int, int>, int>> A;
    input >> n >> k;
    for (int i = 0; i <= n; i++)
        H.push_back(vector <int> ());
    while (input >> u >> v >> w) {
        u++, v++;
        if (w == -1 && u != v)
            H[u].push_back(v), H[v].push_back(u);
        if (w != -1)
            A.push_back(make_pair(make_pair(u, v), w));
    }
    output << "0 " << n << " " << k << endl << endl << n << endl;
    for (int u = 1; u <= n; u++) {
        output << H[u].size() << " ";
        for (int v : H[u])
            output << v << " ";
        output << endl;
    }
    output << endl;
    output << A.size() << endl;
    for (auto e : A)
        output << e.first.first << " " << e.first.second << " " << e.second << endl;
}

int main() {
    for (auto & entry : filesystem::directory_iterator("graphs")) {
        string input_loc = entry.path();
        string output_loc = input_loc;
        output_loc = "input"+output_loc.erase(0,6);
        ifstream input(input_loc);
        ofstream output(output_loc);
        process(input, output);
        input.close(), output.close();
    }
    return 0;
}
