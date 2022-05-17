#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "hexdump.h"

char global_st[] = "Hello CS300!";

void f() {
    char local_st[] = "We <3 systems";

    hexdump(global_st, 12);
    hexdump(local_st, 13);

    //char* allocated_st = (char*)malloc(100);
    //hexdump(allocated_st, 100);
}

int main() {
    f();
}
