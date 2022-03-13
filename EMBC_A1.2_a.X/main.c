#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <sys/attribs.h>
#include "pragma.h"
#include "config.h"
#include "timer.h"
#include "oc.h"
#include "pwm.h"
#include "servo.h"
//hoi alessa en silas
int angle = 0; 
int twoButtonsPressed = 0;
unsigned char *message = 1;

int main() 
{
  
  init_buttons();
  init_servo(40000000, 5); 
  angle_setWidth(angle);
    
  ansel_SRV_S0PWM = 0;
  tris_SRV_S0PWM = 0;
    
    while(1)
    {        
        if(debounce(prt_BTN_BTNR))
        {    
            _CP0_SET_COUNT(0);
            while(_CP0_GET_COUNT() < 800000)
            {
                if(debounce(prt_BTN_BTNC))
                {
                    twoButtonsPressed = 1; 
                }
            } 
            if(twoButtonsPressed == 0)
            {
                if((angle + 5) >= 45)
                {

                }
                else
                {
                    angle = angle + 5;
                }
                angle_setWidth(angle);
            }
            twoButtonsPressed = 0; 
        }
        
        if(debounce(prt_BTN_BTNC))
        {
            _CP0_SET_COUNT(0);
            while(_CP0_GET_COUNT() < 800000)
            {
                if(debounce(prt_BTN_BTNR))
                {
                    twoButtonsPressed = 1; 
                }
            } 
            if(twoButtonsPressed == 0)
            {
                if((angle - 5) <= -45)
            {
                
            }
            else
            {
                angle = angle - 5;
            }
            angle_setWidth(angle);
            }
            twoButtonsPressed = 0; 
            
        }     
    }
}