
_main:

;lab1.c,1 :: 		void main() {
;lab1.c,2 :: 		TRISD.f0 = 0;
	BCF        TRISD+0, 0
;lab1.c,3 :: 		TRISD.f1 = 0;
	BCF        TRISD+0, 1
;lab1.c,4 :: 		TRISD.f2 = 0;
	BCF        TRISD+0, 2
;lab1.c,5 :: 		TRISD.f3 = 0;
	BCF        TRISD+0, 3
;lab1.c,6 :: 		for(;;)
L_main0:
;lab1.c,8 :: 		PortD = 0b00000001 ;
	MOVLW      1
	MOVWF      PORTD+0
;lab1.c,9 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;lab1.c,10 :: 		PortD.f0 = 0 ;
	BCF        PORTD+0, 0
;lab1.c,13 :: 		PortD = 0b00000010 ;
	MOVLW      2
	MOVWF      PORTD+0
;lab1.c,14 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;lab1.c,15 :: 		PortD.f1 = 0 ;
	BCF        PORTD+0, 1
;lab1.c,18 :: 		PortD =  0b00000100 ;
	MOVLW      4
	MOVWF      PORTD+0
;lab1.c,19 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;lab1.c,20 :: 		PortD.f2 = 0 ;
	BCF        PORTD+0, 2
;lab1.c,23 :: 		PortD = 0b00001000 ;
	MOVLW      8
	MOVWF      PORTD+0
;lab1.c,24 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;lab1.c,25 :: 		PortD.f3 = 0 ;
	BCF        PORTD+0, 3
;lab1.c,27 :: 		}
	GOTO       L_main0
;lab1.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
