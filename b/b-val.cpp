#include "../testlib.h"

int main(int argc, char *argv[]) {
    registerValidation(argc, argv);
    inf.readWord("[a-z<>_]{1,32000}");
    inf.readEoln();
    inf.readEof();
}