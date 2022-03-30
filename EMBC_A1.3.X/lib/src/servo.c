#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <sys/attribs.h>
#include "config.h"
#include "servo.h"
#include "pwm.h"
#include "timer.h"
#include "oc.h"

//void servo_OC5callback();
//void servo_T2callback();





unsigned char init_servo(int fpb, int channel)
{
    timer_register_T2callback((T2callback) servo_T2callback);
    output_compare_OC5callback((OC5callback) servo_OC5callback);
    TRISAbits.TRISA15 = 0; //configure as an output
    pwm_init(fpb, 2,  channel, 20);
    pwm_setWidth(2, channel, 2000);
    macro_enable_interrupts(); 
    return 1; 
}

void angle_setWidth(int angle)
{
    static int widthUs = 0;
    static int angle2;
    angle2 = angle - '0';
    widthUs = ((angle / 5) * 66.66667 + 1500);
    pwm_setWidth(2, 5, widthUs);
}

void servo_T2callback()
{
    // The timer interrupt should make the servo signal high
    lat_SRV_S1PWM = 1;  
};

void servo_OC5callback()
{
    // the output compare interrupt should make the servo signal low
    lat_SRV_S1PWM = 0;
};

