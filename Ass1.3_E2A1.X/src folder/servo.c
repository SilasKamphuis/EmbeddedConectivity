/* 
 * File:   servo.h
 * Author: Sjors van Hees, Alec de Jongh
 * Date:   23-2-2022
 * Version: 1
 */

#include "config.h"
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <sys/attribs.h>
#include "pwm.h"
#include "servo.h"
#include "timer.h"

//void __ISR(_TIMER_2_VECTOR, ipl7auto) Timer2ISR() {
//    PORTAbits.RA15 = 1;
//    IFS0bits.T2IF = 0;
//}


//
//void __ISR(_OUTPUT_COMPARE_1_VECTOR, ipl7auto) Oc1ISR(){
//    PORTAbits.RA15 = 0;
//    IFS0bits.OC1IF = 0;
//}

void servo_T2callback(void)
{
    PORTAbits.RA15 = 1;
}

void servo_OC1callback(void)
{
    PORTAbits.RA15 = 0;
}

void servo_setpos(int channel, int angle){
    //One dreeg per witdth (2.1ms-0.9ms)/90 = 0,013333333 ms = 13.333333 ?s
    const float One_Degree_Width = 13.333333;
    int widthUs = (int)(1500 + angle*One_Degree_Width);
    pwm_setWidth(2, channel, widthUs);   
}

unsigned char servo_init(int fpb, int channel, int angle){
    timer_register_T2callback(servo_T2callback);
    OUTPUT_COMPARE_register_OC1callback(servo_OC1callback);
    //configure Servo 1 as an output
    TRISAbits.TRISA15 = 0;
    
    unsigned char returnValue = '0';
    pwm_init(fpb, 2, channel, 20);
    servo_setpos(channel, angle);
    if(channel >= 1 && channel <= 5){
        returnValue = '1';
    }
    return returnValue;
}
