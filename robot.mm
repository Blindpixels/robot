#include "myalgo.h"
#include <cstdlib>
bool Algo1(unsigned short S, unsigned short L, unsigned short R, int Init, int * VL, int * VR)
{
    
    // Target – It is the position you want the line follower to always be(or try to be),that is, the center of the robot.
    // Current Position – It is the current position of the robot with respect to the line.
    // Error - It is the difference between the current position and the target. It can be negative, positive or zero.
    // Proportional – It tells us how far the robot is from the line like – to the right , to the extreme right, to the left or a little to the left. Proportional is the fundamental term used to calculate the other two.
    // Integral – It gives the accumulated error over time. It tells us if the robot has been on the line in the last few moments or not. 
    // Derivative – It is the rate at which the robot oscillates to the left and right about the line.

    Error=target_pos – current_pos               //calculate error
    P=Error * Kp                       //error times proportional constant gives P
    I=I + Error                         //integral stores the accumulated error
    I=I * Ki                             //calculates the integral value
    D=Error – Previos_error       //stores change in error to derivate
    Correction=P + I + D
      
if (S == 0b111111111111111) { * VL=50;* VR=50;}
if (S == 0b011111111111110) { * VL=50;* VR=50;}
if (S == 0b001111111111100) { * VL=50;* VR=50;}
if (S == 0b000111111111000) { * VL=50;* VR=50;}
if (S == 0b000011111110000) { * VL=50;* VR=50;}
if (S == 0b000001111100000) { * VL=50;* VR=50;}
// şuana kadar hep ortada çizgi

if (S == 0b000000111110000) { * VL=50; * VR=64;}
// sola dönüş

if (S == 0b000111110000000) { * VL=32;* VR=50;}
// sola dönüş +1

if (S == 0b001111100000000) { * VL=16;* VR=50;}
// sola dönüş +2

if (S == 0b011111000000000) { * VL=8; * VR=50;}
// sola dönüş +3

if (S == 0b111110000000000) { * VL=4; * VR=50;}
// sola dönüş +4

if (S == 0b111100000000000) { * VL=2; * VR=50;}
// sola dönüş +5

if (S == 0b111000000000000) { * VL=1; * VR=50;}
// sola dönüş +6

if (S == 0b110000000000000) { * VL=0; * VR=50;}
// sola dönüş +7

if (S == 0b100000000000000) { * VL=0; * VR=50;}
// sola dönüş +7

if (S == 0b000011111000000) { * VL=64; * VR=50;}
// sağa dönüş

if (S == 0b000000011111000) { * VL=50; * VR=32;}
// sağa dönüş +1

if (S == 0b000000001111100) { * VL=50; * VR=16;}
// sağa dönüş +2

if (S == 0b000000000111110) { * VL=50; * VR=8;}
// sağa dönüş +3

if (S == 0b000000000011111) { * VL=50; * VR=4;}
// sağa dönüş +4

if (S == 0b000000000001111) { * VL=50; * VR=2;}
// sağa dönüş +5

if (S == 0b000000000000111) { * VL=50; * VR=1;}
// sağa dönüş +6

if (S == 0b000000000000011) { * VL=50; * VR=0;}
// sağa dönüş +7

if (S == 0b000000000000001) { * VL=50; * VR=0;}
// sağa dönüş +7

return true;
}
bool Algo2(unsigned short S, unsigned short L, unsigned short R, int Init, int * VL, int * VR)
{ // Robot sadece düz gidecek. Sensör kontrolü yok.
*VL=5;
*VR=5;
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