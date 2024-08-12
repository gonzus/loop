#include <stdio.h>

int main(int argc, char *argv[]) {
  printf("--------------------------\n");

  unsigned top = 20000;
  unsigned expected = top * top;
  printf("C: running up to %u (%u) iterations\n", top, expected);

  unsigned total = 0;
  for (unsigned i = 0; i < top; i++) {
    for (unsigned j = 0; j < top; j++) {
      total += 1;
    }
  }
  printf("%s\n", total == expected ? "OK" : "BAD");
  return 0;
}
