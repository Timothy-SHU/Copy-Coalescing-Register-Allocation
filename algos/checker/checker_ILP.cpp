#include <bits/stdc++.h>
using namespace std;

int main() {
    for (int T = 1; T <= 2000000; T++, cerr << endl) {
        cerr << "-------- Test #" << T << " --------\n";
        system("checker/data < checker/config.txt > checker/input.txt");
        system("ILP/ILP < checker/input.txt > checker/answer.txt");
        system("Treewidth/Treewidth < checker/input.txt > checker/output.txt");
        long long output = -1, answer = -1; double avg;
        ifstream outputFile("checker/output.txt");
        ifstream answerFile("checker/answer.txt");
        outputFile >> output >> avg >> output >> output;
        answerFile >> answer >> avg >> answer;
        cerr << "Outputed " << output << ", answer is " << answer << ". ";
        if (output == answer) cerr << "Correct.\n";
        else { cerr << "Incorrect!\n"; break; }
    }
    return 0;
}
