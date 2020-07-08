#include "../testlib.h"
#include <iostream>

using namespace std;

int main(int argc, char *argv[]) {
    registerGen(argc, argv, 1);
    println(rnd.next("[a-z<>_]{10000,32000}"));
    return 0;
}