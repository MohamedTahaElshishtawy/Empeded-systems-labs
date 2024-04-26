/*
* DIO.c
*
* Created: 3/7/2024 10:20:50 PM
*  Author: mohamed taha
*/

#include "std_macros.h"
#include <avr/io.h>

void DIO_vsetPINDir(unsigned char portname , unsigned char pinnumber , unsigned char direction)
{
	switch(portname)
	{
		case 'A':
		case 'a':
		{
			if(direction == 1)
			{
				SET_BIT(DDRA,pinnumber);
			}
			else
			{
				CLR_BIT(DDRA,pinnumber);
			}

		}
		case 'B':
		case 'b':
		{
			if(direction == 1)
			{
				SET_BIT(DDRB,pinnumber);
			}
			else
			{
				CLR_BIT(DDRB,pinnumber);
			}

		}
		case 'C':
		case 'c':
		{
			if(direction == 1)
			{
				SET_BIT(DDRC,pinnumber);
			}
			else
			{
				CLR_BIT(DDRC,pinnumber);
			}

		}
		case 'D':
		case 'd':
		{
			if(direction == 1)
			{
				SET_BIT(DDRD,pinnumber);
			}
			else
			{
				CLR_BIT(DDRD,pinnumber);
			}

		}
		default:
		break;
	}
}
void DIO_vsetPINVal(unsigned char portname , unsigned char pinnumber , unsigned char pin_voltage)
{
	switch(portname)
	{
		case 'A':
		case 'a':
		{
			if(pin_voltage == 1)
			{
				SET_BIT(PORTA,pinnumber);
			}
			else
			{
				CLR_BIT(PORTA,pinnumber);
			}

		}
		case 'B':
		case 'b':
		{
			if(pin_voltage == 1)
			{
				SET_BIT(PORTB,pinnumber);
			}
			else
			{
				CLR_BIT(PORTB,pinnumber);
			}

		}
		case 'C':
		case 'c':
		{
			if(pin_voltage == 1)
			{
				SET_BIT(PORTC,pinnumber);
			}
			else
			{
				CLR_BIT(PORTC,pinnumber);
			}

		}
		case 'D':
		case 'd':
		{
			if(pin_voltage == 1)
			{
				SET_BIT(PORTD,pinnumber);
			}
			else
			{
				CLR_BIT(PORTD,pinnumber);
			}

		}
		default:
		break;
	}
}
void DIO_vtogPIN(unsigned char portname , unsigned char pinnumber)
{
	switch(portname)
	{
		case 'A':
		case 'a':
		{
			TOG_BIT(PORTA,pinnumber);
		}
		case 'B':
		case 'b':
		{
			TOG_BIT(PORTB,pinnumber);

		}
		case 'C':
		case 'c':
		{
			TOG_BIT(PORTC,pinnumber);

		}
		case 'D':
		case 'd':
		{
			TOG_BIT(PORTD,pinnumber);

		}
		default:
		break;
	}
}
unsigned char DIO_u8read(unsigned char portname , unsigned char pinnumber)
{
	unsigned char val;
	switch(portname)
	{
		case 'A':
		case 'a':
		{
			val = READ_BIT(PINA,pinnumber);
		}
		case 'B':
		case 'b':
		{
			val = READ_BIT(PINB,pinnumber);

		}
		case 'C':
		case 'c':
		{
			val = READ_BIT(PINC,pinnumber);

		}
		case 'D':
		case 'd':
		{
			val = READ_BIT(PIND,pinnumber);
		}
		default:
		break;
	}
	return val;
	
}

void DIO_set_port_direction(unsigned char portname , unsigned char direction)
{
	switch(portname)
	{
		case 'A':
		case 'a':
		{
			if(direction == 1)
			{
				DDRA=0xFF;
			}
			else
			{
				DDRA=0x00;
			}

		}
		case 'B':
		case 'b':
		{
			if(direction == 1)
			{
				DDRB=0xFF;
			}
			else
			{
				DDRB=0x00;
			}

		}
		case 'C':
		case 'c':
		{
			if(direction == 1)
			{
				DDRC=0xFF;
			}
			else
			{
				DDRC=0x00;
			}

		}
		case 'D':
		case 'd':
		{
			if(direction == 1)
			{
				DDRD=0xFF;
			}
			else
			{
				DDRD=0x00;
			}

		}
		default:
		break;
	}
}
void DIO_write_port(unsigned char portname , unsigned char port_voltage) 
{
	switch(portname)
	{
		case 'A':
		case 'a':
		{
			if(port_voltage == 1)
			{
				PORTA = 0xFF;
			}
			else
			{
				PORTA = 0x00;
			}

		}
		case 'B':
		case 'b':
		{
			if(port_voltage == 1)
			{
				PORTB = 0x00;
			}
			else
			{
				PORTB = 0xFF;
			}

		}
		case 'C':
		case 'c':
		{
			if(port_voltage == 1)
			{
				PORTC = 0xFF;
			}
			else
			{
				PORTC = 0x00;
			}

		}
		case 'D':
		case 'd':
		{
			if(port_voltage == 1)
			{
				PORTD = 0xFF;
			}
			else
			{
				PORTD = 0x00;
			}

		}
		default:
		break;
	}
}
unsigned char DIO_port_read(unsigned char portname)
{
	unsigned char val;
	switch(portname)
	{
		case 'A':
		case 'a':
		{
			val = PINA;
		}
		case 'B':
		case 'b':
		{
			val = PINB;

		}
		case 'C':
		case 'c':
		{
			val = PINC;

		}
		case 'D':
		case 'd':
		{
			val = PIND;
		}
		default:
		break;
	}
	return val;
	
}
void DIO_toggle_port(unsigned char portname)
{
	switch(portname)
	{
		case 'A':
		case 'a':
		{
			PORTA ^= 0xFF;	//PORTA =~ PORTA;
		}
		case 'B':
		case 'b':
		{
			PORTB ^= 0xFF;	//PORTB =~ PORTB;
		}
		case 'C':
		case 'c':
		{
			PORTC ^= 0xFF;	//PORTC =~ PORTC;
		}
		case 'D':
		case 'd':
		{
			PORTD ^= 0xFF;	//PORTD =~ PORTD;
		}
		default:
		break;
	}
}
