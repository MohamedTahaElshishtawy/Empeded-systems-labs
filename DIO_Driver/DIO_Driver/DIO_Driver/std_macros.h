/*
 * std_macros.h
 *
 * Created: 3/2/2024 12:01:16 AM
 *  Author: mohamed taha
 */ 


#ifndef STD_MACROS_H_
#define STD_MACROS_H_

#define SET_BIT(reg,bit)    reg|=(1<<bit) 
#define CLR_BIT(reg,bit)    reg&=~(1<<bit)
#define TOG_BIT(reg,bit)    reg^=(1<<bit)
#define READ_BIT(reg,bit)   ((reg&(1<<reg))>>bit)


#endif /* STD_MACROS_H_ */