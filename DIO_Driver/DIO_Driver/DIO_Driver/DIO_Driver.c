/*
 * DIO_Driver.c
 *
 * Created: 3/7/2024 10:20:04 PM
 *  Author: mohamed taha
 */ 



#include "DIO.h"
#define F_CPU8000000UL
#include <util/delay.h>
int main(void)
{
    DIO_vsetPINDir('A',0,1);
	DIO_vsetPINDir('A',3,1);
	while(1)
    {
        //TODO:: Please write your application code 
		DIO_vtogPIN('A',0);
		_delay_ms(1000);
		DIO_vtogPIN('A',3);
		_delay_ms(1000);
		
    }
}