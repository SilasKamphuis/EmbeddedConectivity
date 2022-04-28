/* ************************************************************************** */
/** Header file of servo.c

@Company
 Fontys Hogescholen

@Authors
 Koen van der Wolf and Jules van den Aker

@File Name
 servo.h

@Description
  This file declares the functions described in servo.c
 */
/* ************************************************************************** */
#ifndef _servo_H
#define _servo_H

/**
 * Sets up servo angle to zero degrees and enables OCchannel and timerChannel
 * 
 * @param OCchannel - integer
 *        Timer selection (1-5).
 * 
 * @param timerChannel - integer
 *        Timer selection (2, 3).
 */
void setupServo(int OCchannel, int timerChannel);

/**
 * Returns current servo angle based on previous setServoAngle() function calls
 */
int getServoAngle();

/**
 * Applies angle on the servo motor
 * 
 * @param angle - integer
 *        angle selection (-45 to 45 degrees).
 */
void setServoAngle(int angle);

/**
 * Defines interrupt service routine of the timer channel
 * 
 * @param ipl#auto - integer
 *        Interrupt priority (1-7).
 */
//void __ISR(_TIMER_2_VECTOR, ipl3auto) Timer2ISR();

/**
 * Defines interrupt service routine of the OC channel
 * 
 * @param ipl#auto - integer
 *        Interrupt priority (1-7).
 */
//void __ISR(_OUTPUT_COMPARE_1_VECTOR, ipl2auto) Oc1ISR();

#endif /* _servo_H */