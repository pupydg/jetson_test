#include<Encoder_test.h>
#include<JetsonGPIO.h>
#include <iostream>
#include <signal.h>
#include <chrono>
#include <thread>

using namespace std;

#define E1A 21
#define E1B 23

static bool end_this_program = false;

inline void delayMs(int ms) { this_thread::sleep_for(chrono::milliseconds(ms)); }

void signalHandler(int s) { end_this_program = true; }


int main()
{
    encoder coder;
    coder.init(E1A,E1B);
    while (!end_this_program)
    {
        cout<<"ticks_ : "<<coder.get_ticks()<<endl;
    }
    
}