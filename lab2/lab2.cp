#line 1 "C:/Users/mohamed/Desktop/lab2/lab2.c"
void main() {
int cnt = 0 ;
trisd = 0x00, portd = 0x00;
trisb = 0x01, portb = 0x00;
for(;;)
 {
 if(portb.f0 == 1)
 {
 cnt++;
 while(portb.f0 == 1);
 if(cnt == 7)
 cnt = 1;
 }
 if(cnt == 1)
 portd = 0b00000100;



 if(cnt == 2)
 portd = 0b00011000;


 if(cnt == 3)
 portd = 0b00011100;


 if(cnt == 4)
 portd = 0b01100011;


 if(cnt == 5)
 portd = 0b01100111;


 if(cnt == 6)
 portd = 0b01111011;









 }
}
