
/**
 * main.c
 */
#include "tm4c123gh6pm.h"
#include <stdint.h>
#include <stdbool.h>

uint8_t counter = 0;
bool click = false;
bool reverse = false;

void breakFunc(void){
    return;
}

unsigned char reverseFirstThreeBits(unsigned char bits){
	bits = bits & 0x07;
	unsigned char result = (bits%2)<<2;
	result |= ((bits/2)%2)<<1;
	result |= ((bits/4)%2);
	return result;
}

unsigned char color_array[8] = {0, 0b100, 0b010, 0b110, 0b001, 0b101, 0b011, 0b111};

int main(void)
{
	SYSCTL_RCGC2_R = SYSCTL_RCGC2_GPIOF; // Enable clock for port F
	SYSCTL_RCGCTIMER_R |= (1<<0); // Enable clock for Timer 0 module

    GPIO_PORTF_DIR_R = 0X0E; // Set data directions
    GPIO_PORTF_DEN_R = 0X1E; // Enable pins
    GPIO_PORTF_PUR_R = 0X10; // Enable pull-up resistors
	GPIO_PORTF_IM_R = 0x10; // Enable interrupt on only pin 4 (button, SW1)
	NVIC_EN0_R |= (1<<30) | (1<<19); /*Enable PORTF Interrupt IRQ30 and Timer 0 interrupt IRQ19*/
	GPIO_PORTF_IS_R &= ~(0x10); //Set interrupt sense on PORTF to edge-trigger
	GPIO_PORTF_IEV_R &= ~(0x10); // Falling edge detection

	while(1){
		// if(!(GPIO_PORTF_DATA_R & 0X10) && !click){
		// 	counter += 1;
        //     GPIO_PORTF_DATA_R = (reverseFirstThreeBits(counter)<<1);
		// 	click = true;

        // }
		// else if (click && (GPIO_PORTF_DATA_R & 0x10)){
		//     //GPIO_PORTF_DATA_R &= ~(0X0E);
		// 	click = false;
		// }
		// if(counter > 7){counter = 0;}
	}

	return 0;
}

void GPIOF_Handler(void){
	TIMER0_CTL_R = 0; // Ensure timer is disabled
	TIMER0_CFG_R = 0b100; // Configure timer for 16-bit operation
	TIMER0_TAMR_R = 0b000000110001; // Configure for One-shot mode
	TIMER0_TAMATCHR_R = 0xFFFF; // Set compare value
	TIMER0_IMR_R |= (1<<4); // Enable interrupt when reaching set value.
	TIMER0_TAPR_R = 0xFF; // Configure prescaler, 209 ms counting time.
	TIMER0_CTL_R = 1; // Enable timer.
	while(!(GPIO_PORTF_DATA_R & 0X10));
    GPIO_PORTF_ICR_R |= 0x10; // Clear the interrupt
	breakFunc();
	if(click && !reverse){
		reverse = true;
		click = false;
	}
	if(click && reverse){
		reverse = false;
		click = false;
	}
	if(!reverse){
		counter++;
	}
	else{
		counter--;
	}
	if(counter == 8){
	counter = 0;
	}else if(counter == 255){
		counter = 7;
	}
	GPIO_PORTF_DATA_R = (color_array[counter]<<1);

	
	click = true;
	


}

void Timer0_ISR(void){
	click = false;
	TIMER0_ICR_R |= (1<<4); // Clear Timer A Match interrupt
}


