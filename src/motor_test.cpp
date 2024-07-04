#include<iostream>
#include<chrono>
#include<thread>
#include <signal.h>
#include<JetsonGPIO.h>
using namespace GPIO;
using namespace std;

static bool end_this_program = false;

#define AIN1 21
#define AIN2 23



inline void delay(int s) { this_thread::sleep_for(chrono::seconds(s)); }
void signalHandler(int s) { end_this_program = true; }
int main()
{
    // When CTRL+C pressed, signalHandler will be called
    signal(SIGINT, signalHandler);

    // Pin Definitions
    // int output_pin = 18; // BOARD pin 12, BCM pin 18
    

    // Pin Setup.
    GPIO::setmode(GPIO::BOARD);
    // set pin as an output pin with optional initial state of HIGH
    GPIO::setup(AIN1, GPIO::OUT, GPIO::HIGH);
    GPIO::setup(AIN2, GPIO::OUT, GPIO::HIGH);

    cout << "Strating demo now! Press CTRL+C to exit" << endl;



    while (!end_this_program)
    {
        delay(1);
        // Toggle the output every second
    }

    GPIO::cleanup();

    return 0;
}