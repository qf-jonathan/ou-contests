#include "../testlib.h"
#include <iostream>

using namespace std;

int main(int argc, char *argv[]) {
    registerGen(argc, argv, 1);
    int n = rnd.next(10000, 64000);
    int k = rnd.next(n / 2 - 100, n / 2 + 100);
    cout << n << ' ' << k << endl;
    for (int i = 0; i < n; i++) {
        if (i) cout << ' ';
        cout << rnd.next(1, 1000000000);
    }
    cout << endl;
    return 0;
}