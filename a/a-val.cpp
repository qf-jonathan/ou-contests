#include "../testlib.h"

int main(int argc, char *argv[]) {
    registerValidation(argc, argv);
    int n = inf.readInt(2, 32000);
    inf.readEoln();
    inf.readInt(1, 1000000000);
    for (int i = 1; i < n; i++) {
        inf.readSpace();
        inf.readInt(1, 1000000000);
    }
    inf.readEoln();
    inf.readEof();
}