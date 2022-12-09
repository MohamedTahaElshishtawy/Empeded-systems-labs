#define ones portd.f0
#define tens portd.f1
#define start portc.f5

void main() {
          char cnt1 = 0 , cnt2 = 0 ,i;
          trisb = 0; portb = 0;
          trisc = 1; start = 0;
          trisd = 0; ones = 0 ; tens = 0;
          while(start == 0);
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
                ones = 1; delay_ms(10); ones = 0;
                portb = cnt2;
                tens = 1; delay_ms(10); tens = 0;
              }
            }

}