/* 
 * File:   testservo.c
 * Author: Sjors van Hees, Alec de Jongh
 * Date:   5-4-2022
 * Version: 4
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
#include "srf.h"

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

//led to debu code
void Debug_led(){
    lat_LED8_R = 1;
    lat_LED8_G = 0;
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

//Get Utrasound distance
//int mode: -1 do nothing, 0 use last mode, 1 seach distance
//int wait_ms: time to wait for getting distance
//return: distance if -1 distance hasn't been found
int GetUltrasound_distance(int mode){
    //Wait time in milliseconds
    int wait_ms = 125;
    int distance = -1;
    //Searching is 1 or off is 0
    static int memory_mode = 0;
    //the start time when is begin searching the distance
    static unsigned long Start_time = 0;
    
    if (mode == 1){
        //start searching distance
        Start_time = millis();
        srf_range();
        memory_mode = 1;
    }
    else if (mode == -1){
        //immediately stop searching distance
        stop_distance();
        memory_mode = 0;
    }
    //Turn on or off the leds
    if (memory_mode == 1 && (millis() - Start_time) >= wait_ms){
        distance = ultrasoond_distance();
        memory_mode = 0;
    }
    return distance;
}

//Communication for receiving and sedding data via the UART
void communication_UART(int *Servo_angle){
    //messages from uart
    unsigned char Uart_messages[64];
    unsigned char Uart_command[64];
    unsigned char Uart_angle[64];
    int distance_to_uart = -1;
    
    //will get message if return is used
    if(shell_receivemessage(Uart_messages) == 1){
        int i = 0;

        //if the first 8 characters are equal to "setangle"
        if(strncmp("setangle", Uart_messages, 8) == 0){
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
                writePromtp();
            }
            else{
                //Write a error message if the values aren't in between -45 to 45
                writeError();
                writePromtp();
            }   
        }
        //if the first 8 characters are equal to "setangle"
        else if (strncmp("getangle", Uart_messages, 8) == 0){
            sprintf(Uart_messages, "\r\ncurrent angle: %i degrees\r", *Servo_angle);
            //!!!!Print message to uart!!!!
            shell_sendmessage(Uart_messages);
            //write angle to spi
            Write_angle_spi(*Servo_angle);
            writePromtp();
        }
        else if(strncmp("getdistance", Uart_messages, 11) == 0){
            distance_to_uart = GetUltrasound_distance(1);
        }
        else{
            //Write a error message if the message isn't Recognized
            writeError();
            writePromtp();
        }
    }
    distance_to_uart = GetUltrasound_distance(0);
    if(distance_to_uart != -1){
        sprintf(Uart_messages, "\r\nmeasured distance is %i cm\r", distance_to_uart);
        //!!!!Print message to uart!!!!
        shell_sendmessage(Uart_messages);
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
    
    //initialize Ultasound sensor
    srf_init(PB_FRQ);
    
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