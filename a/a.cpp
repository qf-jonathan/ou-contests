#include <bits/stdc++.h>

using namespace std;

int main() {
    int n, a, cnt = 0;
    priority_queue<int> q;
    cin >> n;
    while (n--) {
        cin >> a;
        q.push(a);
    }
    while (q.size() > 1) {
        int f = q.top();
        q.pop();
        int s = q.top();
        q.pop();
        if (f > s) {
            q.push(f - s);
        }
        cnt++;
    }
    if (q.size() == 0)
        cout << cnt << " " << -1 << endl;
    else
        cout << cnt << " " << q.top() << endl;
    return 0;
}