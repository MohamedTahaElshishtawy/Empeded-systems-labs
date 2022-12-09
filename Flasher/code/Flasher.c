  void main() {
                adcon1 = 6;
                trisb = 0;
                portb = 0;

                for(;;)
                {
                     portb.f0 = 1;
                     delay_ms(1000);
                    
                     portb.f0 = 0;
                     delay_ms(500);
                    
                     portb.f1 = 1;
                     delay_ms(1000);
                  
                     portb.f1 = 0;
                     delay_ms(500);
                     
                  }

              }