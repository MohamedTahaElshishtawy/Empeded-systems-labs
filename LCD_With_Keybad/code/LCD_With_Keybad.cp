#line 1 "C:/Users/mohamed/Desktop/empedded systems projects/LCD_With_Keybad/code/LCD_With_Keybad.c"
sbit LCD_EN at RC0_bit;
sbit LCD_RS at RC1_bit;
sbit LCD_D4 at RC4_bit;
sbit LCD_D5 at RC5_bit;
sbit LCD_D6 at RC6_bit;
sbit LCD_D7 at RC7_bit;

sbit LCD_EN_direction at trisC0_bit;
sbit LCD_RS_direction at trisC1_bit;
sbit LCD_D4_direction at trisC4_bit;
sbit LCD_D5_direction at trisC5_bit;
sbit LCD_D6_direction at trisC6_bit;
sbit LCD_D7_direction at trisC7_bit;




void main() {
 trisb.b0 = 0; portb.b0 = 0;
 Lcd_init();

}
