#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define N 100

int palindrom(char *s)
{
    int ls = strlen(s);
    for (int i=0; i<ls/2; i++)
        if (s[i]!=s[ls-1-i])
            return 0;

    return 1;
}

char** sir_palindromuri(char* mat[N][N], int m, int n, int* nr)
{
    char ** t = (char** )malloc(m*n*sizeof(char*));
    *nr=0;

    for (int i=0; i<m; i++)
        for (int j=0; j<n; j++)
            if (palindrom(mat[i][j]))
            {
                t[*nr]=mat[i][j];
                (*nr)++;
            }

    return t;
}

char** sir_palindromuri2(char mat[N][N][N], int m, int n, int* nr)
{
    char ** t = (char** )malloc(m*n*sizeof(char*));
    for (int i=0; i<m*n; i++)
        t[i] = (char*) malloc(N*sizeof(char));
    *nr=0;

    for (int i=0; i<m; i++)
        for (int j=0; j<n; j++)
            if (palindrom(mat[i][j]))
            {
                //t[*nr]=mat[i][j];
                strcpy(t[*nr], mat[i][j]);

                (*nr)++;
            }

    return t;
}


int main()
{
    char* mat[N][N] = { {"ac", "lup"}, {"ou", "lupul"}, {"ABBA", "greu"}};
    int nr;
    char **x;
    x=sir_palindromuri(mat,3,2,&nr);

    printf("%d\n",nr);
    for (int i=0; i<nr; i++)
        puts(x[i]);

    char mat2[N][N][N] = { {"ac", "lup"}, {"ou", "lupul"}, {"ABBA", "greu"}};
    x=sir_palindromuri2(mat2,3,2,&nr);
    printf("%d\n",nr);
    mat2[1][1][1]='a';
    for (int i=0; i<nr; i++)
        puts(x[i]);

    return 0;
}
