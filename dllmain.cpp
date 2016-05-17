#include "myalgo.h"
#include <cstdlib>
#include <iostream>

using namespace std;

bool Algo1(unsigned short S, unsigned short L, unsigned short R, int Init, int * VL, int * VR)
{
    
    double result, integral, last_proportional, error, derivative = 1;
    double target = 992; // 0b000001111100000 
    double Kp = 0.1 , Ki = 0.000001, Kd = 0.000001;

    last_proportional = 0;
    integral = 0;
    error = (S - target)*Kp;
    derivative = (error - last_proportional)*Kd;
    integral = (integral + error)*Ki;
    
    result = error + integral + derivative;

    if(result == 0 || result == 1040 || result == 3096 || result == 7196 || result == 15390 || result == 31775){
    	// dümdüz gitmesi için, 70ten sonra dönemiyor
        *VL = 70;
        *VR = 70;
    }else{
    	// 55 ten sonra toplayamiyor
        *VL = (result < 90) ? 55 : 4;
        *VR = (result > -90) ? 55 : 4;
    }

    return true;
}

bool Algo2(unsigned short S, unsigned short L, unsigned short R, int Init, int * VL, int * VR)
{ // Robot sadece düz gidecek. Sensör kontrolü yok.
*VL = 5;
*VR = 5;
}
bool Algo3(unsigned short S, unsigned short L, unsigned short R, int Init, int * VL, int * VR)
{
return Algo1(S, L, R, Init, VL, VR);
}
bool Algo4(unsigned short S, unsigned short L, unsigned short R, int Init, int * VL, int * VR)
{
return Algo1(S, L, R, Init, VL, VR);
}
bool Algo5(unsigned short S, unsigned short L, unsigned short R, int Init, int * VL, int * VR)
{
return Algo1(S, L, R, Init, VL, VR);
}
bool Algo6(unsigned short S, unsigned short L, unsigned short R, int Init, int * VL, int * VR)
{
return Algo1(S, L, R, Init, VL, VR);
}
bool Algo7(unsigned short S, unsigned short L, unsigned short R, int Init, int * VL, int * VR)
{
return Algo1(S, L, R, Init, VL, VR);
}
