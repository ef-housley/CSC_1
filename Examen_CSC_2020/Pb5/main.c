#include <stdio.h>
#include <stdlib.h>

int linie_ordonata(FILE *pf)
{
    float x;
    char c;
    int n=0;
    float ultim;

    enum {
        nedefinita,
        crescatoare,
        descrescatoare
    }ordine;

    int este_ordonat=1;
    ordine=nedefinita;

    do{
        n++;
        fscanf(pf,"%f%c",&x, &c);
        if (este_ordonat && n>1)
        {
            if (x>ultim)
            {
                if (ordine==nedefinita)
                    ordine=crescatoare;
                else
                    if (ordine==descrescatoare)
                        este_ordonat=0;
            }
            else
                if (x<ultim)
                {
                    if (ordine==nedefinita)
                        ordine=descrescatoare;
                    else
                        if (ordine==crescatoare)
                            este_ordonat=0;
                }
        }
        ultim=x;
    }while (c==' ');

    return este_ordonat;
}

int main()
{
    FILE *pf = fopen("siruri.txt","r");
    if (!pf) {
        printf("Nu se poate deschide fisierul!!");
        exit(3);
    }

    FILE *pfout = fopen("ordonate.txt","w");
    if (!pfout) {
        printf("Nu se poate crea fisierul cu rezultate!!");
        exit(31);
    }

    while (!feof(pf))
    {
        int x = linie_ordonata(pf);
        if (!feof(pf))
        {
            if (x==1)
                fputs("DA\n",pfout);
            else
                fputs("NU\n",pfout);
        }
    }


    fclose(pf);
    fclose(pfout);

    return 0;
}
