
_main:

;Flasher.c,1 :: 		void main() {
;Flasher.c,2 :: 		adcon1 = 6;
	MOVLW      6
	MOVWF      ADCON1+0
;Flasher.c,3 :: 		trisb = 0;
	CLRF       TRISB+0
;Flasher.c,4 :: 		portb = 0;
	CLRF       PORTB+0
;Flasher.c,6 :: 		for(;;)
L_main0:
;Flasher.c,8 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;Flasher.c,9 :: 		delay_ms(1000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;Flasher.c,11 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;Flasher.c,12 :: 		delay_ms(500);
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
;Flasher.c,14 :: 		portb.f1 = 1;
	BSF        PORTB+0, 1
;Flasher.c,15 :: 		delay_ms(1000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;Flasher.c,17 :: 		portb.f1 = 0;
	BCF        PORTB+0, 1
;Flasher.c,18 :: 		delay_ms(500);
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
;Flasher.c,20 :: 		}
	GOTO       L_main0
;Flasher.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
