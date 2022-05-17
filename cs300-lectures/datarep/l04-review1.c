#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void printString() {
  char* local_st = "yoyo";
  printf("address pointed to by local_st: %p\n", local_st);
}

int main() {
  printString();

  return 0;
}
