#include <stdio.h>
#include <stdlib.h>

int main()
{
    int h1,m1,s1,h2,m2,s2;
    scanf("%d:%d:%d", &h1, &m1, &s1);
    scanf("%d:%d:%d", &h2, &m2, &s2);
    if (h1<0 || h1>23 || m1<0 || m1>59 || s1<0 || s1>59 ||
        h2<0 || h2>23 || m2<0 || m2>59 || s2<0 || s2>59)
    {
        printf("Date de intrare invalide!");
        return 0;
    }

    int dh, dm, ds;

    ds = s2-s1;
    if (ds<0)
    {
        ds+=60;
        m2--;
    }
    dm = m2-m1;
    if (dm<0)
    {
        dm+=60;
        h2--;
    }
    dh= h2-h1;
    if (dh<0)
        dh+=24;

    printf("%d ore, %d minute si %d secunde", dh,dm,ds);

    return 0;
}
