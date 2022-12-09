
_main:

;two_7seg.c,5 :: 		void main() {
;two_7seg.c,6 :: 		char cnt1 = 0 , cnt2 = 0 ,i;
	CLRF       main_cnt1_L0+0
	CLRF       main_cnt2_L0+0
;two_7seg.c,7 :: 		trisb = 0; portb = 0;
	CLRF       TRISB+0
	CLRF       PORTB+0
;two_7seg.c,8 :: 		trisc = 1; start = 0;
	MOVLW      1
	MOVWF      TRISC+0
	BCF        PORTC+0, 5
;two_7seg.c,9 :: 		trisd = 0; ones = 0 ; tens = 0;
	CLRF       TRISD+0
	BCF        PORTD+0, 0
	BCF        PORTD+0, 1
;two_7seg.c,10 :: 		while(start == 0);
L_main0:
	BTFSC      PORTC+0, 5
	GOTO       L_main1
	GOTO       L_main0
L_main1:
;two_7seg.c,11 :: 		for(;;)
L_main2:
;two_7seg.c,13 :: 		cnt1++;
	INCF       main_cnt1_L0+0, 1
;two_7seg.c,14 :: 		if(cnt1 == 10)
	MOVF       main_cnt1_L0+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;two_7seg.c,16 :: 		cnt1 = 0;
	CLRF       main_cnt1_L0+0
;two_7seg.c,17 :: 		cnt2++;
	INCF       main_cnt2_L0+0, 1
;two_7seg.c,18 :: 		if(cnt2 == 10) cnt2 = 0;
	MOVF       main_cnt2_L0+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_main6
	CLRF       main_cnt2_L0+0
L_main6:
;two_7seg.c,19 :: 		}
L_main5:
;two_7seg.c,20 :: 		for(i = 0 ; i < 50 ; i++)
	CLRF       R1+0
L_main7:
	MOVLW      50
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;two_7seg.c,22 :: 		portb = cnt1;
	MOVF       main_cnt1_L0+0, 0
	MOVWF      PORTB+0
;two_7seg.c,23 :: 		ones = 1; delay_ms(10); ones = 0;
	BSF        PORTD+0, 0
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
	NOP
	BCF        PORTD+0, 0
;two_7seg.c,24 :: 		portb = cnt2;
	MOVF       main_cnt2_L0+0, 0
	MOVWF      PORTB+0
;two_7seg.c,25 :: 		tens = 1; delay_ms(10); tens = 0;
	BSF        PORTD+0, 1
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
	BCF        PORTD+0, 1
;two_7seg.c,20 :: 		for(i = 0 ; i < 50 ; i++)
	INCF       R1+0, 1
;two_7seg.c,26 :: 		}
	GOTO       L_main7
L_main8:
;two_7seg.c,27 :: 		}
	GOTO       L_main2
;two_7seg.c,29 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
