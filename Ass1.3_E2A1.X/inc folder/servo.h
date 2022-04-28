/* 
 * File:   servo.h
 * Author: Sjors van Hees, Alec de Jongh
 * Date:   23-2-2022
 * Version: 1
 */

#ifndef _SERVO_H
#define _SERVO_H


/**
 * Platform: Basys MX3
 * Authors: Sjors van Hees, Alec  de Jongh
 * 
 * This library provides basic servo functionality using timer and oc libraries.
 */

/**
 * External functions
 */

/* ========================================================================== */
/* function: servo_init( fpb, channel, angle ); */
/* */
/* description: initialises a servo channel. */
/* */
/* pre: fpb - peripheral bus clock frequency in Hz */
/* channel - number of the servo channel to initialise */
/* (range 1...5) */
/* angle - servo opening angle in degrees (range -45...45) */
/* */
/* post: return value - 0 if initialisation failed, 1 if succeeded */
/* ========================================================================== */
unsigned char servo_init(int fpb, int channel, int angle);

/* ========================================================================== */
/* function: servo_setpos( fpb, channel, angle ); */
/* */
/* description: changes the opening angle for a servo channel. */
/* */
/* pre: channel - number of the servo channel to set the position for */
/* (range 1...5) */
/* angle - servo opening angle in degrees (range -45...45) */
/* */
/* post: none */
/* ========================================================================== */
void servo_setpos(int channel,int angle);

//callback function
//no parameters
//no returns
void servo_T2callback();

#endif /* _SERVO_H */