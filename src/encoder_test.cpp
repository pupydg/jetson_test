#include <JetsonGPIO.h>
#include <iostream>
#include <signal.h>
#include <chrono>
#include <thread>

using namespace std;

#define E1A 21
#define E1B 23
// #define E2A 22
// #define E2B 23

int ticks_L, ticks_R;
static bool end_this_program = false;

inline void delayMs(int ms) { this_thread::sleep_for(chrono::milliseconds(ms)); }

void signalHandler(int s) { end_this_program = true; }

void get_ticks()
{
    if (GPIO::input(E1A) == GPIO::HIGH)
    {
        if (GPIO::input(E1B) == GPIO::LOW)
        {
            ticks_L++;
        }
        else
        {
            ticks_L--;
        }
    }
    else
    {
        if (GPIO::input(E1B) == GPIO::LOW)
        {
            ticks_L--;
        }
        else
        {
            ticks_L++;
        }
    }
}

int main()
{
    signal(SIGINT, signalHandler);
    GPIO::setmode(GPIO::BOARD);
    GPIO::setup(E1A, GPIO::IN);
    GPIO::setup(E1B, GPIO::IN);
    // GPIO::setup(E2A,GPIO::IN);
    GPIO::add_event_detect(E1A, GPIO::RISING, get_ticks, 10);
    GPIO::add_event_detect(E1A, GPIO::FALLING, get_ticks, 10);
    // GPIO::add_event_detect(E1B,GPIO::RISING,get_ticks,10);
    // GPIO::add_event_detect(E1B,GPIO::FALLING,get_ticks,10);
    while (!end_this_program)
    {
        cout << "ticks_l : " << ticks_L << endl;
    }
    GPIO::cleanup();
    return 0;
}
