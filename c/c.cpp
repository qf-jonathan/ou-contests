#include <bits/stdc++.h>

using namespace std;

int main() {
    int n, k, a, ns[64005];
    cin >> n >> k;
    for(int i = 0; i < n; i++) {
        cin >> ns[i];
    }
    multiset<int> s;
    for (int i = 0; i < k; i++) {
        s.insert(ns[i]);
    }
    cout << *(--s.end());
    for (int i = k; i < n; i++) {
        s.insert(ns[i]);
        s.erase(ns[i - k]);
        cout <<' ' << *(--s.end());
    }
    cout << endl;
    return 0;
}