
#include "emp_type.h"
#include "tm4c123gh6pm.h"
#include "init_funcs.h"
/**
 * main.c
 */

/*Take an arbitrary constant, e.g.0x67. 
On every button-press show one bit’s value on the built-in LED starting from bit0. 
Make use of Lab1’s code. */
INT16U num = 0x673E;
INT16U counter = 0;


int main(void)
{
	INT16U var1 = 0xFFFF;
	var1 &= ~((1<<6)|(1<<5));

	INT16U var2 = 0xFFFF;
	//1111 1(111 111)1 1111
	// Keep value of first 5 bits, insert sequence, and keep value of last 5 bits.
	var2 = ((var2 & 0xF800) | ((0b011110)<<5) | ((var2 & 0x1F)<<0));

	init_portf();

//	int dummy;
//    SYSCTL_RCGC2_R = SYSCTL_RCGC2_GPIOF;
//
//    dummy = SYSCTL_RCGC2_R;
//
//    GPIO_PORTF_DIR_R = 0X0E;
//    GPIO_PORTF_DEN_R = 0X1E;
//    GPIO_PORTF_PUR_R = 0X10;
//	GPIO_PORTF_IM_R = 0x10; // Enable interrupt on only pin 4 (button, SW1)
//	NVIC_EN0_R |= (1<<30); //Enable PORTF interrupt in NVIC

    while(1){
//        if(!(GPIO_PORTF_DATA_R & 0X10)){
//            GPIO_PORTF_DATA_R &= (num<<counter);
//			counter++;
//			while(!(GPIO_PORTF_DATA_R & 0X10));
//        }
    }

	return 0;
}

void portf_handler(void){
    INT8U bit_value = ((num >> counter) & 1);
	GPIO_PORTF_DATA_R = bit_value * 0xE;
	counter++;
	if(counter > 15){
	    counter = 0;
	}
	GPIO_PORTF_ICR_R |= 0x11;
}
