/* ************************************************************************** */
/** Main code for PWM signal servo

@Company
 Fontys Hogescholen

@Authors
 Koen van der Wolf and Jules van den Aker

@File Name
 servo.c

@Description
 This file uses functions from the header files of oc, pwm and timer.
 */
/* ************************************************************************** */

/* Generic C libraries */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

/* XC32 libraries */
#include <xc.h>
#include <sys/attribs.h>

/* Your own custom made libraries */
#include "oc.h"
#include "pwm.h"
#include "timer.h"
#include "servo.h"
#include "pragma.h"
#include "config.h"

/*local variables*/
int currentServoAngle = 0;
int angleTarget = 0;
void servo_T2callback(void);
void servo_OC1callback(void);


//initializes servo motor
void setupServo(int OCchannel, int timerChannel)
{
  //I/O definitions
    TRISAbits.TRISA15 = 0;
    
  //functions
    pwm_init(PB_FRQ, 2, 1, 20);
    pwm_setWidth(2, 1, 1500);
    
    macro_enable_interrupts();
    
    timer_register_T2callback(servo_T2callback); //Connecting servo_T2callback to the TIMER2 callback function. 
    OC_register_OC1callback(servo_OC1callback); //Connecting servo_T2callback to the OC1 callback function.
}

//Returns current servo angle
int getServoAngle()
{
    return currentServoAngle; //returns currentServoAngle based on previous setServoAngle function calls
}

//Sets current servo angle
void setServoAngle(int angle)
{
    const float oneDegreeWidth = 13.333333; //The oneDegreeWidth is calculated from (2.1-0.9)/90 = 13.333333 us
    int widthUs = 1500+((int)(oneDegreeWidth*angle)); //The widthUs is 1500 us (the zero degree position) + the angle converted into PWM period
    pwm_setWidth(2,1,widthUs); //This function is documented in pwm.h
    currentServoAngle = angle; //update currentServoAngle with input angle of the function
    angleTarget = angle;
}

/* callback functions */
//prototype of the servo_T2callback function 
void servo_T2callback(void)
{
    PORTAbits.RA15 = 1;
}

//prototype of the servo_OC1callback function 
void servo_OC1callback(void)
{
    PORTAbits.RA15 = 0;
}