#include "stdio.h"
#include "string.h"

#define RAPORT(x,y) (x)/y

void dubleaza(double x[]){
    static int i=1;
    x=x+i;
    x[0] *=2;
    i++;
}


int main(){
    int a =21;
    int b=10;
    printf("%d\n", RAPORT(b-a, b+a));

    float f=1.0f;
    for (int i = 0; i < 1000; i++) {
        if(i>100)
            break;
        f *=10.0f;
    }
    printf("%f\n", f);

    int c = a&b;
    printf("%d\n", c);

    double t[]={9.9, 7.7, 5.5, 3.3, 1.1};
    printf("%x\n", sizeof (t));

    char s[10]="examen";
    char r[10]="examen";
    printf("%s\n", (s!=r)? "POINTER":"VALOARE");


    enum{zece =10, douazeci=20, treizeci};
    printf("%d\n", zece+douazeci+treizeci);

    struct data{
        char nume[4];
        int valoare;
    }p;
    p.valoare=400;
    strcpy(p.nume, "Popa");
    printf("%d\n", p.valoare);
}
