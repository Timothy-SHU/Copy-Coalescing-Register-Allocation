#include <bits/stdc++.h>
using namespace std;

int main() {
    for (int T = 1; T <= 20; T++, cerr << endl) {
        cerr << "-------- Test #" << T << " --------\n";
        system("./data < config.txt > input.txt");
        system("./BruteForce < input.txt > answer.txt");
        system("../Treewidth/Treewidth < input.txt > output.txt");
        long long output = 0, answer = 0;
        ifstream outputFile("output.txt");
        ifstream answerFile("answer.txt");
        outputFile >> output, answerFile >> answer;
        cerr << "Outputed " << output << ", answer is " << answer << ". ";
        if (output == answer) cerr << "Correct.\n";
        else { cerr << "Incorrect!\n"; break; }
    }
    return 0;
}
