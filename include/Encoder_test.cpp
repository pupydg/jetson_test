#include <Encoder_test.h>
bool encoder::init(int pinA, int pinB)
{
    _ticks = 0;
    _pinA = pinA;
    _pinB = pinB;
    GPIO::setmode(GPIO::BOARD);
    GPIO::setup(pinA, GPIO::IN);
    GPIO::setup(pinB, GPIO::IN);

    GPIO::add_event_detect(pinA, GPIO::FALLING, count_ticks, 10);
}

void encoder::count_ticks()
{
    if (GPIO::input(_pinB) == GPIO::LOW)
    {
        _ticks++;
    }
    else
    {
        _ticks--;
    }
}

int encoder::get_ticks()
{

    return _ticks;
}

void encoder::restart()
{
    _ticks = 0;
}