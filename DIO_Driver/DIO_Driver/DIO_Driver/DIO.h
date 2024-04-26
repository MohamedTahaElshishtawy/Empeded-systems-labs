/*
 * IncFile1.h
 *
 * Created: 3/7/2024 10:56:19 PM
 *  Author: mohamed taha
 */ 


#ifndef DIO_H_
#define DIO_H_

//pins
void DIO_vsetPINDir(unsigned char portname , unsigned char pinnumber , unsigned char direction);
void DIO_vsetPINVal(unsigned char portname , unsigned char pinnumber , unsigned char pin_voltage);
void DIO_vtogPIN(unsigned char portname , unsigned char pinnumber);
unsigned char DIO_u8read(unsigned char portname , unsigned char pinnumber);

//ports
void DIO_set_port_direction(unsigned char portname , unsigned char direction);
void DIO_write_port(unsigned char portname , unsigned char port_voltage);
unsigned char DIO_port_read(unsigned char portname);
void DIO_toggle_port(unsigned char portname);





#endif /* INCFILE1_H_ */