#include <xc.h>
#include <stdlib.h>
#include <sys/attribs.h>
#include <stdio.h>
#include "i2c.h"
#include "timer.h"
#include "srf.h"
#include "stdbool.h"
#include "osal/osal.h"

#define TIMER_CHANNEL 1
#define I2C_BUS_CLOCK_FREQ  100000

unsigned short int distanceValue = 0;

SrfDistanceCallback srfDistanceCallback;
unsigned char srfDistanceCallbackFlag = 0;

bool startMeasurement = false;

void srf_registerDistanceCallback(SrfDistanceCallback ptr_srfDistanceCallback) {
    srfDistanceCallback = ptr_srfDistanceCallback;
    srfDistanceCallbackFlag = 1;
}

void __ISR(_TIMER_1_VECTOR, ipl4auto) Timer1ISR(void) {
    unsigned short int distance;
    
    if (startMeasurement) {
        srf_startRanging();  
    }
    else if (srfDistanceCallbackFlag) {
        srf_getDistance(&distance);
        srfDistanceCallback(distance);
    }
    startMeasurement = !startMeasurement;
  //  timer_detachInterrupt(TIMER_CHANNEL);
    
    IFS0bits.T1IF = 0;
}

void srf_init(int pbclk_freq) {
    I2C_Init(I2C_BUS_CLOCK_FREQ);
    timer_init(pbclk_freq, TIMER_CHANNEL, 100, 0, 0);
    srf_range();
}

void srf_range() {
    if (srf_startRanging()) {
        timer_reset(TIMER_CHANNEL);
        timer_attachInterrupt(TIMER_CHANNEL, 4);
    }
}
 
unsigned char srf_startRanging() {
    unsigned char data1[2] = { 0x02, 0x8c };
    unsigned char data2[2] = { 0x01, 0x02 };
    unsigned char data3[2] = { 0x00, 0x51 };
 
    I2C_Write(0x70, data1, 2, 0);
    I2C_Write(0x70, data2, 2, 0);
    I2C_Write(0x70, data3, 2, 0);
    
    return 1;
}
 
unsigned char srf_getDistance(unsigned short int *distance) {
    unsigned char data[1] = { 0x02 };
    unsigned char res[2] = { 0, 0 };
 
    I2C_Write(0x70, data, 1, 0);
    I2C_Read(0x70, res, 2);
 
    *distance = res[0] * 256 + res[1];
    distanceValue = *distance;
    
    return 1;
}

unsigned short int srf_getDistanceValue()
{
    /* enter and leave a critical section disabling interrupts */
    OSAL_CRITSECT_DATA_TYPE status = OSAL_CRIT_Enter(OSAL_CRIT_TYPE_HIGH);
    /* perform an atomic sequence of code */
    short int temp = distanceValue;
    /* leave the critical section */
    OSAL_CRIT_Leave(OSAL_CRIT_TYPE_HIGH, status);
    
    return temp;
}

void onSrfDistance(unsigned char distance) 
{
    distanceValue = distance;
}
