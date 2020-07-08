#include <bits/stdc++.h>

using namespace std;

int main() {
    string a;
    cin >> a;
    list<char> lst;
    auto carret = lst.begin();
    for (char c : a) {
        if (c == '<') {
            if (carret != lst.begin())
                carret--;
        } else if (c == '>') {
            if (carret != lst.end())
                carret++;
        } else {
            carret = lst.insert(carret, c);
            carret++;
        }
    }
    for (auto c : lst) {
        cout << c;
    }
    cout << endl;
    return 0;
}
