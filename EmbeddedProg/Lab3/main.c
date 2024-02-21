#include "tm4c123gh6pm.h"
#include "systick.h"
#include "emp_type.h"
#include <stdbool.h>

#define IDLE 0

INT8U code_state = IDLE;
/**
 * main.c
 */
int main(void)
{
	int dummy;
    SYSCTL_RCGC2_R = SYSCTL_RCGC2_GPIOF; // 1) activate clock for Port F
    dummy = SYSCTL_RCGC2_R;           // allow time for clock to start
    GPIO_PORTF_LOCK_R = 0x4C4F434B;   // 2) unlock GPIO Port F
    GPIO_PORTF_CR_R = 0x1F;           // allow changes to PF4-0
    GPIO_PORTF_DIR_R = 0x0E;
    GPIO_PORTF_DEN_R = 0x1F;
    GPIO_PORTF_PUR_R = 0x11;
	BOOLEAN switch_1 = 0;
	BOOLEAN switch_2 = 0;
    while(1)
    {
		switch_1 = (~(GPIO_PORTF_DATA_R & 0x10)) & 0x10;
		switch_2 = (~(GPIO_PORTF_DATA_R & 0x01)) & 0x01;
		switch (code_state)
		{
		case IDLE:
			if(!(GPIO_PORTF_DATA_R & 0x01)){
				code_state = 1;
			}
			GPIO_PORTF_DATA_R = 0x02;
			break;
		case 1:
			if(switch_2){
				code_state = 2;
			}
			if(switch_1){
				code_state = IDLE;
			}
			break;
		case 2:
			if(switch_2){
				code_state = 3;
			}
			if(switch_1){
				code_state = IDLE;
			}
			break;
		case 3:
			if(switch_1){
				code_state = 4;
			}
			if(switch_2){
				code_state = IDLE;
			}
			break;
		case 4:
			if(switch_2){
				code_state = 5;
				GPIO_PORTF_DATA_R = 0x08;
			}
			if(switch_1){
				code_state = IDLE;
			}
			break;
		case 5:
			if(switch_1 || switch_2){
				code_state = IDLE;
			}
			break;
		default:
			break;
		}
		while((GPIO_PORTF_DATA_R & 0x10));
		while((GPIO_PORTF_DATA_R & 0x01));
    }
	return 0;
}
