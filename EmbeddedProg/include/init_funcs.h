/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: init_funcs.h
* PROJECT....: EMP
*
* DESCRIPTION: Functions for initialising various components of the TIVA board
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 240216  JFL    Module created.
*
*****************************************************************************/
/***************** Header *********************/
#ifndef _INIT_FUNCS_H
#define _INIT_FUNCS_H
/***************** Include files **************/
#include "emp_type.h"
#include "tm4c123gh6pm.h"
/***************** Defines ********************/
/***************** Variables ******************/
/***************** Functions ******************/
void init_portf(void)
/**********************************************
* Input: N/A
* Output: N/A
* Function: Initialises port f. Enables clock for the GPIO pins on port f, 
* Sets the LED pins to output, button pins to input, and enables interrupt for both buttons.
* Interrupt handlers must be defined elsewhere.
***********************************************/
{
    SYSCTL_RCGC2_R = SYSCTL_RCGC2_GPIOF; // Enable clock for port F
    INT32U dummy = SYSCTL_RCGC2_R; // Dummy read
    GPIO_PORTF_DIR_R = 0X0E; // Set data directions
    GPIO_PORTF_DEN_R = 0X1E; // Enable pins
    GPIO_PORTF_PUR_R = 0X11; // Enable pull-up resistors
	GPIO_PORTF_IM_R = 0x11; // Enable interrupt on pin 4 and 1 (button, SW1)
	NVIC_EN0_R |= (1<<30); /*Enable PORTF Interrupt IRQ30*/
}

void init_timer0A(void)
/**********************************************
* Input: N/A
* Output: N/A
* Function: Initialises port f. Enables clock for the GPIO pins on port f, 
* Sets the LED pins to output, button pins to input, and enables interrupt for both buttons.
* Interrupt handlers must be defined elsewhere.
***********************************************/
{
	SYSCTL_RCGCTIMER_R |= (1<<0); // Enable clock for Timer 0 module
    INT32U dummy = SYSCTL_RCGCTIMER_R; // Dummy read

    NVIC_EN0_R |= (1<<19); // Enable Timer 0A interrupt in NVIC.
}
/***************** Enf of module **************/
#endif
