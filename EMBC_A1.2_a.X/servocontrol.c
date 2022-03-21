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

#define SPIFLASH_PROG_ADDR  0x100
#define SPIFLASH_PROG_SIZE  1

int angle = 0; 
int twoButtonsPressed = 0;
unsigned char *message = 1;
unsigned char spiFlashPageR;
unsigned char spiFlashPageW;




int main() 
{
    LATA = 0;
    TRISA = 0;
          
  init_buttons();
  SPIFLASH_Init();
  init_servo(4000000, 5); 
  angle_setWidth(angle);
    
  tris_SRV_S1PWM = 0;
    
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
                    spiFlashPageW = angle + '0';
                    //clear flash
                    SPIFLASH_EraseAll();
                    //write angle to flash
                    SPIFLASH_ProgramPage(SPIFLASH_PROG_ADDR,spiFlashPageW, 1);
                }
                    //set default for read
                    spiFlashPageR = 0xff;
                    //read flash
                    SPIFLASH_Read(SPIFLASH_PROG_ADDR, spiFlashPageR, 1);
//                angle = spiFlashPageR - '0';
                    
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
                spiFlashPageW = angle + '0';
                //clear flash
                SPIFLASH_EraseAll();
                //write angle to flash
                SPIFLASH_ProgramPage(SPIFLASH_PROG_ADDR,spiFlashPageW, 1);
            }   
                //set default for read
                spiFlashPageR = 0xff;
                //read flash
                SPIFLASH_Read(SPIFLASH_PROG_ADDR, spiFlashPageR, 1);
//                angle = spiFlashPageR - '0';
            angle_setWidth(angle);
            }
            twoButtonsPressed = 0; 
            
        }     
    }
}

