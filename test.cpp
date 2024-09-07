#include<iostream>
using namespace std;
int main() {
    double x[3]={1,2,3};
    double *h=x;
    float *ata=reinterpret_cast<float*> (h);
    cout<<h[0]<<endl;
    return 0;
}
