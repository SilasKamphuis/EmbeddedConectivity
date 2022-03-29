#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <sys/attribs.h>
#include "config.h"
#include "button.h"

void init_buttons()
{
    tris_BTN_BTNR = 1; //right button
    ansel_BTN_BTNR = 0; // set pin to analog input
    
    //tris_BTN_BTNL = 1; //left button
    //ansel_BTN_BTNL = 0;// set pin to analog input
    
    //tris_BTN_BTNU = 1; //up button
    //ansel_BTN_BTNU = 0; // set pin to analog input
    
    //tris_BTN_BTND = 1; //down button 
    
    tris_BTN_BTNC = 1; //center button
}

int debounce (int button)
{
    static int previousState = 0;
    if (_CP0_GET_COUNT() < 8000000) // check clock count
    {
        return 0;
    }
    if (previousState) // check previous button state, if 0 than go to else
    {
        if (button == 1) // button is still pressed
        {
            return 0; // return not pressed
        }
        else
        {
            _CP0_SET_COUNT(0); // reset debounce
            previousState = 0;
            return 0; // return not pressed
        }
    }
    else
    {
        if (button == 1)
        {
            _CP0_SET_COUNT(0);
            previousState = 1; // set buttonstate to 1
            return 1; // return pressed
        }
        else
        {
            return 0; // return not pressed
        }
    }
}