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

#define SPIFLASH_PROG_ADDR  0xf000000
#define SPIFLASH_PROG_SIZE  1

int angle = 0; 
int twoButtonsPressed = 0;
unsigned char *message = 1;
unsigned char spiFlashPageR[1];
unsigned char spiFlashPageW[1];




int main() 
{
    LATA = 0;
    TRISA = 0;
          
  init_buttons();
  SPIFLASH_Init();
  // is overbodig want word in elke function van spiflash aangeroepen
  //als je deze ook aanroept in de main doe je het dubbel!
  //SPIFLASH_WriteEnable();
  init_servo(4000000, 5); 
  angle_setWidth(angle);
    
  tris_SRV_S1PWM = 0;
  
  //Read the value from the spi memory
  //Read the value
    spiFlashPageR[0] = 0;
    
    
    SPIFLASH_Read(SPIFLASH_PROG_ADDR, spiFlashPageR, SPIFLASH_PROG_SIZE);
    
  //Check if it is garbage and if it isnt then use it, otherwise use 0 deg.
    int angle = (int)(spiFlashPageR[0]) - 90;
    if (angle >= -45 && angle <= 45)
        angle_setWidth(angle);
    else
        angle_setWidth(0);
    
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
                    //change angle
                    angle = angle + 5;
                    // int to char
                    spiFlashPageW[0] = angle + 90;
                    //clear flash
                    SPIFLASH_Erase4k(SPIFLASH_PROG_ADDR);
                    //write angle to flash
                    SPIFLASH_ProgramPage(SPIFLASH_PROG_ADDR,spiFlashPageW, SPIFLASH_PROG_SIZE);
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
                //change angle
                angle = angle - 5;
                // int to char
                spiFlashPageW[0] = angle + 90;
                //clear flash
                SPIFLASH_Erase4k(SPIFLASH_PROG_ADDR);
                //write angle to flash
                SPIFLASH_ProgramPage(SPIFLASH_PROG_ADDR,spiFlashPageW, SPIFLASH_PROG_SIZE);
            }   
            angle_setWidth(angle);
            }
            twoButtonsPressed = 0; 
            
        }     
    }
}

