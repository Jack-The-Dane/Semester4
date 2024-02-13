
#include "emp_type.h"
#include "tm4c123gh6pm.h"
/**
 * main.c
 */
int main(void)
{
	INT16U var1 = 0xFFFF;
	var1 &= ~((1<<6)|(1<<5));

	INT16U var2 = 0xFFFF;
	//1111 1(111 111)1 1111
	// Keep value of first 5 bits, insert sequence, and keep value of last 5 bits.
	var2 = ((var2 & 0xF800) | ((0b011110)<<5) | ((var2 & 0x1F)<<0));

	/*Take an arbitrary constant, e.g.0x67. 
	On every button-press show one bit’s value on the built-in LED starting from bit0. 
	Make use of Lab1’s code. */
	INT16U num = 0x67;
	INT16U counter = 0;
	int dummy;
    SYSCTL_RCGC2_R = SYSCTL_RCGC2_GPIOF;

    dummy = SYSCTL_RCGC2_R;

    GPIO_PORTF_DIR_R = 0X0E;
    GPIO_PORTF_DEN_R = 0X1E;
    GPIO_PORTF_PUR_R = 0X10;

    while(1){
        if(!(GPIO_PORTF_DATA_R & 0X10)){
            GPIO_PORTF_DATA_R &= (num<<counter);
			counter++;
			while(!(GPIO_PORTF_DATA_R & 0X10));
        }
    }

	return 0;
}
