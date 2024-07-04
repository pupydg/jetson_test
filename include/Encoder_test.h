#ifndef ENCODER_TEST
#define ENCODER_TEST

#include<JetsonGPIO.h>
class encoder
{

public:
    encoder() = default;
    bool init(int pinA,int pinB);
    int get_ticks();
    void count_ticks();
    void restart();
    int _pinA;
    int _pinB;
    int _ticks;
};


#endif
