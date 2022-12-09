#line 1 "C:/Users/mohamed/Desktop/lab1/lab1.c"
void main() {
 TRISD.f0 = 0;
 TRISD.f1 = 0;
 TRISD.f2 = 0;
 TRISD.f3 = 0;
 for(;;)
 {
 PortD = 0b00000001 ;
 delay_ms(1000);
 PortD.f0 = 0 ;


 PortD = 0b00000010 ;
 delay_ms(1000);
 PortD.f1 = 0 ;


 PortD = 0b00000100 ;
 delay_ms(1000);
 PortD.f2 = 0 ;


 PortD = 0b00001000 ;
 delay_ms(1000);
 PortD.f3 = 0 ;

 }
}
