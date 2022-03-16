#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <sys/attribs.h>
#include "config.h"
#include "servo.h"
#include "pwm.h"
#include "timer.h"

//void timer_register_T2callback(T2callback servo_T2callback);

void __ISR(_TIMER_2_VECTOR, ipl7auto) Timer2ISR() 
{
    lat_SRV_S1PWM = 1;
    IFS0bits.T2IF = 0;
    
}

void __ISR(_OUTPUT_COMPARE_5_VECTOR, ipl7auto) Oc5ISR() 
{
    lat_SRV_S1PWM = 0;
    IFS0bits.OC5IF = 0;
    
}


unsigned char init_servo(int fpb, int channel)
{
    
    TRISAbits.TRISA15 = 0; //configure as an output
    pwm_init(fpb, 2,  channel, 20);
    pwm_setWidth(2, channel, 2000);
    macro_enable_interrupts(); 
    return 1; 
}

void angle_setWidth(int angle)
{
    static int widthUs = 0;
    widthUs = ((angle / 5) * 66.66667 + 1500);
    pwm_setWidth(2, 5, widthUs);
}

//void servo_T2callback()
//{
//    // The timer interrupt should make the servo signal high
//    
//    // the output compare interrupt should make the servo signal low
//    
//};