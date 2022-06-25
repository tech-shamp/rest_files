#include <stdio.h>
#include <stdlib.h>

void main()
{
  // FILE *in;
  // int rno, marks;
  // char grade;
  // int i;
  // if ((in = fopen("./this.txt", "r")) == NULL)
  // {
  //   printf("Error...");
  // }
  // while (fscanf(in, "%d %d %c \n", &rno, &marks, &grade) != EOF)
  // {
  //   printf("%d %d %c", rno, marks, grade);
  // }

  // merge contents
  // FILE *out, *in;
  // char ch[25];
  // int i;
  // if ((in = fopen("this.txt", "r")) == NULL)
  //   printf("Error...");
  // out = fopen("two.txt", "a");
  // while (fgets(ch, 25, in) != NULL)
  // {
  //   /* code */
  //   fputs(ch, out);
  // }
  // fclose(in);
  // fclose(out);

  // append strings from usr
  FILE *out;
  char ch[25];
  int i;
  if ((out = fopen("this.js", "a")) == NULL)
  {
    /* code */
    printf("Error...");
  }
  for (i = 0; i < 3; i++)
  {
    /* code */
    printf("Enter String ");
    gets(ch);
    fputs(ch, out);
    fputs("\n", out);
  }
  fclose(out);
}

// r = file is opened in read mode, == data exist
// w = file is opened in written mode, rewrite data
// a = file is opened in append mode, != read data
// r+ = file is opened in read/write mode, == data exist
// w+ = file is opened in read/write mode, rewrite data
// a+ = file is opened in append mode, end of existing data