
_main:

;lab2.c,1 :: 		void main() {
;lab2.c,2 :: 		int cnt = 0 ;
	CLRF       main_cnt_L0+0
	CLRF       main_cnt_L0+1
;lab2.c,3 :: 		trisd = 0x00, portd = 0x00;
	CLRF       TRISD+0
	CLRF       PORTD+0
;lab2.c,4 :: 		trisb = 0x01, portb = 0x00;
	MOVLW      1
	MOVWF      TRISB+0
	CLRF       PORTB+0
;lab2.c,5 :: 		for(;;)
L_main0:
;lab2.c,7 :: 		if(portb.f0 == 1)
	BTFSS      PORTB+0, 0
	GOTO       L_main3
;lab2.c,9 :: 		cnt++;
	INCF       main_cnt_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_cnt_L0+1, 1
;lab2.c,10 :: 		while(portb.f0 == 1);
L_main4:
	BTFSS      PORTB+0, 0
	GOTO       L_main5
	GOTO       L_main4
L_main5:
;lab2.c,11 :: 		if(cnt == 7)
	MOVLW      0
	XORWF      main_cnt_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVLW      7
	XORWF      main_cnt_L0+0, 0
L__main14:
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;lab2.c,12 :: 		cnt = 1;
	MOVLW      1
	MOVWF      main_cnt_L0+0
	MOVLW      0
	MOVWF      main_cnt_L0+1
L_main6:
;lab2.c,13 :: 		}
L_main3:
;lab2.c,14 :: 		if(cnt == 1)
	MOVLW      0
	XORWF      main_cnt_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVLW      1
	XORWF      main_cnt_L0+0, 0
L__main15:
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;lab2.c,15 :: 		portd = 0b00000100;
	MOVLW      4
	MOVWF      PORTD+0
L_main7:
;lab2.c,19 :: 		if(cnt == 2)
	MOVLW      0
	XORWF      main_cnt_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVLW      2
	XORWF      main_cnt_L0+0, 0
L__main16:
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;lab2.c,20 :: 		portd = 0b00011000;
	MOVLW      24
	MOVWF      PORTD+0
L_main8:
;lab2.c,23 :: 		if(cnt == 3)
	MOVLW      0
	XORWF      main_cnt_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVLW      3
	XORWF      main_cnt_L0+0, 0
L__main17:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;lab2.c,24 :: 		portd = 0b00011100;
	MOVLW      28
	MOVWF      PORTD+0
L_main9:
;lab2.c,27 :: 		if(cnt == 4)
	MOVLW      0
	XORWF      main_cnt_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVLW      4
	XORWF      main_cnt_L0+0, 0
L__main18:
	BTFSS      STATUS+0, 2
	GOTO       L_main10
;lab2.c,28 :: 		portd = 0b01100011;
	MOVLW      99
	MOVWF      PORTD+0
L_main10:
;lab2.c,31 :: 		if(cnt == 5)
	MOVLW      0
	XORWF      main_cnt_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVLW      5
	XORWF      main_cnt_L0+0, 0
L__main19:
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;lab2.c,32 :: 		portd = 0b01100111;
	MOVLW      103
	MOVWF      PORTD+0
L_main11:
;lab2.c,35 :: 		if(cnt == 6)
	MOVLW      0
	XORWF      main_cnt_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVLW      6
	XORWF      main_cnt_L0+0, 0
L__main20:
	BTFSS      STATUS+0, 2
	GOTO       L_main12
;lab2.c,36 :: 		portd = 0b01111011;
	MOVLW      123
	MOVWF      PORTD+0
L_main12:
;lab2.c,46 :: 		}
	GOTO       L_main0
;lab2.c,47 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
