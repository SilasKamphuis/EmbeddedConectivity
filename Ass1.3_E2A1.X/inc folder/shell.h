#ifndef _SHELL_H
#define _SHELL_H


/* ========================================================================== */
/* function: write embc> as message */
/* */
/* description: write embc> as message */
/* ========================================================================== */
void writePromtp();

/* ========================================================================== */
/* function: write suntax error as message */
/* */
/* description: gives a warning to the user */
/* ========================================================================== */
void writeError();

/* ========================================================================== */
/* function: shell_init( fpb ); */
/* */
/* description: initialises the shell module. */
/* */
/* pre: fpb - peripheral bus clock frequency in Hz */
/* */
/* post: return value - 0 if initialisation failed */
/* 1 if initialisation succeeded */
/* ========================================================================== */
int shell_init(unsigned int fpb);

/* ========================================================================== */
/* function: shell_sendmessage( message ); */
/* */
/* description: transmits a message, stored as a string in the message */
/* variable, to the terminal. The message will be terminated */
/* with a newline: "\n\r". */
/* */
/* pre: message - pointer to the first element of the string to be */
/* transmitted to the terminal */
/* */
/* ========================================================================== */
int shell_sendmessage(unsigned char *message);

/* ========================================================================== */
/* function: shell_receivemessage( message ); */
/* */
/* description: receive a message from uart */
/* */
/* pre: message - pointer to the first element of the string to be */
/* transmitted to the terminal */
/* */
/* ========================================================================== */
int shell_receivemessage(unsigned char *message);

#endif /* _SHELL_H */