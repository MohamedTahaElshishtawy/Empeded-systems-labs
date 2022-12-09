#line 1 "C:/Users/mohamed/Desktop/empedded systems projects/two-7seg/code/two_7seg.c"




void main() {
 char cnt1 = 0 , cnt2 = 0 ,i;
 trisb = 0; portb = 0;
 trisc = 1;  portc.f5  = 0;
 trisd = 0;  portd.f0  = 0 ;  portd.f1  = 0;
 while( portc.f5  == 0);
 for(;;)
 {
 cnt1++;
 if(cnt1 == 10)
 {
 cnt1 = 0;
 cnt2++;
 if(cnt2 == 10) cnt2 = 0;
 }
 for(i = 0 ; i < 50 ; i++)
 {
 portb = cnt1;
  portd.f0  = 1; delay_ms(10);  portd.f0  = 0;
 portb = cnt2;
  portd.f1  = 1; delay_ms(10);  portd.f1  = 0;
 }
 }

}
