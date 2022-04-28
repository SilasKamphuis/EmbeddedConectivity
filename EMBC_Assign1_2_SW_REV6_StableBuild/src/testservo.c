/* This is the main file for the first assginment for Embedded Connectivity
 * 
 * The assignment is to controll a servo with PWM using layered software.
 * 
 * Human interfacing:
 *  Connect the servo to the "servo 1" pins on the MX3
 *  Press the "BTNR" to decrease the angle of the servo with 5degrees (to the right)
 *  Press the "BTNC" to increase the angle of the servo with 5degrees (to the left)
 *  Note: the servo is limited on 90degrees of freedom
 * 
 * File created: 09-02-2022
 * Validated on: 
 * Handin on:    
 * 
 */

#include <stdio.h>          //Standard c library
#include <stdlib.h>         //Standard c library
#include <xc.h>             //For most board related functions
#include <sys/attribs.h>    //For interupts
#include "config.h"         //To make names easier
#include "servo.h"          //Controlls the servo
#include "spiflash.h"       //Controlls the memory module

const unsigned int SPI_MemoryAddress = 0xf000000;

//int byteToDword(unsigned char input){//HAHA ik dacht dat ik geen cast in dit senario kon gebruiken // HAHA hier ga ik :'(
//  //Declare variables
//    int output = 0;
//  //Carieing the signingBit
//    if ((input >> 7) == 0b1){   //There is a carier, so we need to inverse all the unavaiable data
//        output = 0xFFFFFF80;
//    }
//    return output + ((input << 1) >> 1);//Remove the carrier and add this data
//}
//unsigned char dwordToByte(int input){//HAHA ik dacht dat ik geen cast in dit senario kon gebruiken // HAHA hier ga ik :'(
//  //Declare variables
//    unsigned char output;
//  
//    return (unsigned char)
//            (((input >> 31) << 7) + //Get the signing bit in the correct place
//            ((input << 25) >> 25)); //And copy the rest of the data along
//}

void setup(){
//Configure the IO
  //Button C will turn the servo left
    tris_BTN_BTNC = 1;  // RF0 (BTNC) configured as input
  //Button R will turn the servo right
    tris_BTN_BTNR = 1;  // RB8 (BTNR) configured as input
    ansel_BTN_BTNR = 0; // RB8 (BTNR) disabled analog
    
//Top-level timers
  //Initialise timer 3 to go at 10Hz
    TMR3  = 0x0000;     //Reset timer
    T3CON = 0x8060;     //8 = start timer, 6 = 64 prescaler
    PR3   = 0x30D4;     //0.1 = (PR*64)/8M => 12500
    IPC3bits.T3IP = 6;                  //    priority
    IPC3bits.T3IS = 2;                  //    subpriority
    IFS0bits.T3IF = 0;                  //    clear interrupt flag
    IEC0bits.T3IE = 1;                  //    enable interrupt
    
//Setup lower-levels
  //Servo controlls
    setupServo(1,2);
  //SPI flash memory
    SPIFLASH_Init();
    SPIFLASH_WriteEnable();
    
//Read the value from the spi memory
  //Read the value
    unsigned char valueFromMemory[1];
    valueFromMemory[0] = 0;
    
    
    SPIFLASH_Read(SPI_MemoryAddress, valueFromMemory, 1);
    
  //Check if it is garbage and if it isnt then use it, otherwise use 0 deg.
    int intValue = (int)(valueFromMemory[0]) - 90;
    if (intValue >= -45 && intValue <= 45)
        setServoAngle(intValue);
    else
        setServoAngle(0);
}
void __ISR(_TIMER_3_VECTOR, ipl6auto) Timer3ISR()
{           //runs @10Hz
  //Check the buttons for input
    static int valueSaved = 1;
    int servoAngle = getServoAngle();
    if(prt_BTN_BTNR && prt_BTN_BTNC){}  //Do not respond if both buttons where pressed at the same time
    else if(prt_BTN_BTNR){
      //Get the next angle
        int angle = (servoAngle - 1 > -45)? servoAngle - 1: -45;
      //Move the servo the secified amount of degrees unless it cant then just go to the edge
        setServoAngle(angle);
      //Write the angle to the memory
        valueSaved = 0;
    }
    else if(prt_BTN_BTNC){
      //Get the next angle
        int angle = (servoAngle + 1 < 45)? servoAngle + 1: 45;
      //Move the servo the secified amount of degrees unless it cant then just go to the edge
        setServoAngle(angle);
      //Write the angle to the memory
        valueSaved = 0;
    }
    else if(!valueSaved){
      //Write the value to memory when you let go of a button, becouse we dont want to constantly talk to the SPI_REG
        valueSaved = 1;
        
      //Remove the old data
        SPIFLASH_Erase4k(SPI_MemoryAddress);
    
      //Write the new data
        unsigned char valueToMemory[1];
        valueToMemory[0] = getServoAngle() + 90;
        SPIFLASH_ProgramPage(SPI_MemoryAddress, valueToMemory, 1);
    }
    IFS0bits.T3IF = 0;
}

void main(int argc, char** argv){
    setup();
    while (1){}
}
