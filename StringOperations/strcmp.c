#include <stdio.h>
#include <string.h>

  int main() {

    char s1[120];
    char s2[120];
    int returnValue, i;

    while (1) {
      printf ("Enter s1 : ");
      gets (s1);
      printf ("Enter s2 : ");
      gets (s2);

      // returnValue = strcmp(s1,s2);

        while (s1[i] != 0 && s2[i] != 0) {

          if ((s1[i]-s2[i]) == 0) {
            returnValue = 0;
          }
          else if ((s1[i]-s2[i]) > 0) {
            returnValue = 1;
          }
          else {
            returnValue = -1;
          }
          i++;
        }

    printf ("strcmp(%s,%s) = %i\n", s1, s2, returnValue);
    }
  }
