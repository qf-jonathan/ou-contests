#include <iostream>
#include "../testlib.h"

using namespace std;

int main(int argc, char *argv[]) {
    registerGen(argc, argv, 1);
    int n = rnd.next(10000, 32000);
    println(n);
    for(int i= 0; i < n; i++) {
        if(i) cout << ' ';
        cout << rnd.next(1, 1000000000);
    }
    cout << endl;
    return 0;
}