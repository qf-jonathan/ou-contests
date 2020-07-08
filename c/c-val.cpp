#include "../testlib.h"

int main(int argc, char *argv[]) {
    registerValidation(argc, argv);
    int n = inf.readInt(1, 64000);
    inf.readSpace();
    inf.readInt(1, n);
    inf.readEoln();
    for(int i = 0; i < n; i++) {
        if(i) inf.readSpace();
        inf.readInt(1, 1000000000);
    }
    inf.readEoln();
    inf.readEof();
}