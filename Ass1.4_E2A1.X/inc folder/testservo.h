/* 
 * File:   testservo.h
 * Author: Sjors van Hees, Alec de Jongh
 * Date:   23-2-2022
 * Version: 1
 */

#ifndef TESTSERVO_H
#define	TESTSERVO_H

/**
 * Function for debounce button
 * 
 * @param reading - integer
 *        read the state of the switch.
 * 
 * @param *buttonState - integer
 *        The saved value of the save button currently.
 * 
 * @param *lastButtonState - integer
 *        The saved value of the last button state.
 * 
 * @param *lastDebounceTime - integer
 *        The saved value of the last debounce time.
 * 
 * @return pressed
 */
int Debounce_button(int reading, int *buttonState, int *lastButtonState, unsigned long *lastDebounceTime);

/**
 * Convert the frequency of CoreTimer(40MHz) to 1 millisecond
 * 
 * @return time in milliseconds
 */
int millis();

#endif	/* TESTSERVO_H */