#ifndef _SERVO_H
#define _SERVO_H

unsigned char init_servo(int fpb, int channel);
void angle_setWidth(int angle);
void servo_OC5callback();
void servo_T2callback();

#endif /* _SERVO_H */