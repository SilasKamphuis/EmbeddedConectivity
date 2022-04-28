/* 
 * File:   testservo.c
 * Author: Silas, Kaylee, Alessa 
 * Date:   16-3-2022
 * Version: 1
 */

#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <sys/attribs.h>
#include <string.h>
#include "testservo.h"
#include "config.h"
#include "servo.h"
#include "pragma.h"
#include "spiflash.h"
#include "shell.h"

struct button{
    int button_state;
    int last_button_state;
    unsigned long last_debounce_time;
    unsigned long hold_up_time;
    
};
//make a struct of buttons right
struct button button_left;
//make a struct of buttons center
struct button button_center;

struct servo{
    int angle;
    unsigned long last_angle_change_time;
};
//make a struct for servo 1
struct servo servo_1;


//Function for getting the time in millis
int millis(){
    return _CP0_GET_COUNT()/40000;
}

void angle_change(int *angle, int direction, unsigned long *last_angle_change_time){
    if ((millis() - *last_angle_change_time) > 100){
        *last_angle_change_time = millis();
        if (direction == -1){ //go left
            *angle = *angle - 1;
        }
        else if (direction == 1){ //go right
            *angle = *angle + 1;
        }
    }
}

//Function to configure the RGB leds
void configure_leds (){
    //Configurate RGB leds
    tris_LED8_R = 0;      
    tris_LED8_G = 0;      
    tris_LED8_B = 0;     

    // disable analog (set pins as digital))    
    ansel_LED8_R = 0;     
    ansel_LED8_B = 0;  

    //Turn off the RGB led
    lat_LED8_R = 0;    
    lat_LED8_G = 0;    
    lat_LED8_B = 0;    
}

//Write servo angle to spi
void Write_angle_spi(int angle_servo_spi){
    //Data for writting to SPI address
    //int servo_angle_adress = 10;
    unsigned char angle_to_SPI;
    //write angel to SPIFLASH
    angle_to_SPI = (char)(angle_servo_spi + 90);
    SPIFLASH_Erase4k(0xf000000);
    SPIFLASH_ProgramPage(0xf000000, &angle_to_SPI, 1);
}

//Communication for receiving and sedding data via the UART
void communication_UART(int *Servo_angle){
    //messages from uart
    unsigned char Uart_messages[64];
    unsigned char Uart_command[64];
    unsigned char Uart_angle[64];
    
    //will get message if return is used
    if(shell_receivemessage(Uart_messages) == 1){
        int i = 0;

        //will get the first 8 characters
        for(i = 0; i<8; i = i + 1){
            Uart_command[i]= Uart_messages[i];
        }
        //shell_sendmessage(Uart_command);

        //if the first 8 characters are equal to "setangle"
        if( strcmp(Uart_command, "setangle") == 0){
            for(i = 8; i<20; i = i + 1){
                Uart_angle[i-8]= Uart_messages[i];
            }
            if((atoi(Uart_angle)>=-45) && (atoi(Uart_angle)<=45)){
                *Servo_angle = atoi(Uart_angle);
                //drive the servo to the desired angle
                servo_setpos(1, *Servo_angle);
                sprintf(Uart_messages, "\r\nservo set to %i degrees\r", *Servo_angle);
                //!!!!Print message to uart!!!!
                shell_sendmessage(Uart_messages);
                //write angle to spi
                Write_angle_spi(*Servo_angle);
            }
            else{
                //Write a error message if the values aren't in between -45 to 45
                writeError();
            }   
        }
        //if the first 8 characters are equal to "setangle"
        else if (strcmp(Uart_command, "getangle") == 0){
            sprintf(Uart_messages, "\r\ncurrent angle: %i degrees\r", *Servo_angle);
            //!!!!Print message to uart!!!!
            shell_sendmessage(Uart_messages);
            //write angle to spi
            Write_angle_spi(*Servo_angle);
        }
        else{
            //Write a error message if the message isn't Recognized
            writeError();
        }
        writePromtp();
    }
}


int main(int argc, char** argv){
    //configure leds
    configure_leds();
    
    //digital input BTNC
    tris_BTN_BTNL = 1;
    ansel_BTN_BTNL = 0;
    //input BTNC
    tris_BTN_BTNC = 1;
    
    //chech if the initializing of the servo and shell happend
    unsigned char succesServoInit = '0';
    int succes_init_shell = 0;
    
    //initialize SPI flash memory
    SPIFLASH_Init();
    
    //initialize shell
    succes_init_shell = shell_init(9600);
    
    //Data for writting to SPI address
    //int servo_angle_adress = 10;
    unsigned char SPI_angle;
    
    SPIFLASH_Read(0xf000000, &SPI_angle, 1);
    servo_1.angle = (int)SPI_angle - 90;
    if (servo_1.angle <= 45 && servo_1.angle >= -45){
        Write_angle_spi(servo_1.angle);
    }
    else{
        //write angel to SPIFLASH
        Write_angle_spi(0);
        servo_1.angle = 0;
    }
    
    //initialize servo
    succesServoInit = servo_init(PB_FRQ, 1, servo_1.angle);
    
    //enable interrupts
    macro_enable_interrupts();
    
    while((succesServoInit != '1') || (succes_init_shell != 1)){
        lat_LED8_R = 1;
    }
    //if there is noting wrong with servo init, turn the led green and continue to the loop
    lat_LED8_G = 1;
    
    //Loop code
    while(1){  
        
        //Read_buttons
        button_left.button_state = prt_BTN_BTNL;
        button_center.button_state = prt_BTN_BTNC;
        
        if (button_left.button_state == 0 && button_center.button_state == 1){
            //BTNL is pressed go 1 degree to left each 100 ms
            angle_change(&servo_1.angle, -1, &servo_1.last_angle_change_time);
            
            if (servo_1.angle <= -45){
                servo_1.angle = -45;
            }
            servo_setpos(1, servo_1.angle);
        }
        else if (button_left.button_state == 1 && button_center.button_state == 0){
            //BTNL is pressed go 1 degree to right each 100 ms
            angle_change(&servo_1.angle, 1, &servo_1.last_angle_change_time);
            
            if (servo_1.angle >= 45){
                servo_1.angle = 45;
            }
            servo_setpos(1, servo_1.angle);
        }
        else if (button_left.button_state == 0 && button_center.button_state == 0){
            //if one of the buttons has been released
            if(button_left.last_button_state == 1 || button_center.last_button_state == 1){
                Write_angle_spi(servo_1.angle);
            }
            //Send and receive data from UART
            communication_UART(&servo_1.angle);
            
        }
        //save last button states
        button_left.last_button_state = button_left.button_state;
        button_center.last_button_state = button_center.last_button_state;
    }
}