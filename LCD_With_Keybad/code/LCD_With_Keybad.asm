
_main:

;LCD_With_Keybad.c,18 :: 		void main() {
;LCD_With_Keybad.c,19 :: 		trisb.b0 = 0; portb.b0 = 0;
	BCF        TRISB+0, 0
	BCF        PORTB+0, 0
;LCD_With_Keybad.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
