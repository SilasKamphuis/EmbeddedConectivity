#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <sys/attribs.h>
#include <string.h>
#include "config.h"
#include "shell.h"
#include "uart.h"

//Global variables

enum
{
    ready,
    data_in
} state;

unsigned char commandbuffer[64];
unsigned char buffpointer = 0;

//functions
void writePromtp(){
    shell_sendmessage("\r\nembc> ");
}

void writeError(){
    shell_sendmessage("\r\nsyntax error :(\r\n");
}

int shell_init(unsigned int fpb){
    //UART_Init(fpb);
    UART_InitPoll(fpb);
    
    int i;
    for(i = 0; i <100000; i++){}
    if(shell_sendmessage("\r\nembc shell") == 0){
        return 0;
    }
    if(shell_sendmessage("\r\n==========") == 0){
        return 0;
    }
    writePromtp();
    return 1;
}


int shell_sendmessage(unsigned char *message){
    UART_PutString(message);
    return 1;
}

int shell_receivemessage(unsigned char *message){
    unsigned char uartdata;
    if(UART_AvaliableRx())
    {
        uartdata = UART_GetCharPoll();
        if (uartdata == '\b'){
            //Delete a character if backspace is used
            buffpointer--;
        }
        else{
            //adds a character if there is type a character
            commandbuffer[buffpointer++] = uartdata;
        }
        UART_PutChar(uartdata);
        if(buffpointer == 64){
            //if there has been more than 64 characters typed
            shell_sendmessage("\r\ncommand too long!\n\r");
            writePromtp();
            buffpointer = 0;
        }
        if(uartdata == '\r'){
            //return the message if there has been pressed on return
            commandbuffer[buffpointer -1] = 0;
            strcpy(message, commandbuffer);
            message = commandbuffer;
            buffpointer = 0;
            return 1;
        }
    }   
    return 0;
}