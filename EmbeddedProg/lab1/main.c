

/**
 * main.c
 */
#include <stdint.h>
#include "tm4c123gh6pm.h"


int main(void)
{
    int dummy;
    SYSCTL_RCGC2_R = SYSCTL_RCGC2_GPIOF;

    dummy = SYSCTL_RCGC2_R;

    GPIO_PORTF_DIR_R = 0X0E;
    GPIO_PORTF_DEN_R = 0X1E;
    GPIO_PORTF_PUR_R = 0X10;

    while(1){
        if(GPIO_PORTF_DATA_R & 0X10){
            GPIO_PORTF_DATA_R &= ~(0X02);
        }
        else{
            GPIO_PORTF_DATA_R |= 0X02;
        }
    }
	return 0;
}
