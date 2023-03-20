subtitle "Microchip MPLAB XC8 C Compiler v2.40 (Free license) build 20220703182018 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 55 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_EST
	FNCALL	_main,_Trigger
	FNCALL	_main,_inicia
	FNROOT	_main
	FNCALL	intlevel1,_external
	global	intlevel1
	FNROOT	intlevel1
	global	_freq
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"PWM.h"
	line	19

;initializer for _TMR2PRESCALE
	retlw	04h
	retlw	0
	retlw	0
	retlw	0

	file	"WIPLOZ.c"
	line	73

;initializer for _KI
	retlw	0xd7
	retlw	0x23
	retlw	0x3b

	line	72

;initializer for _KD
	retlw	0x19
	retlw	0x94
	retlw	0x40

	line	71

;initializer for _KP
	retlw	0xc3
	retlw	0x75
	retlw	0x3e

	line	92

;initializer for _setpoint
	retlw	0FAh
	retlw	0

	line	76

;initializer for _velatras
	retlw	055h
	retlw	0

	line	75

;initializer for _veladelante
	retlw	0AFh
	retlw	0

	line	74

;initializer for _vel
	retlw	064h
	retlw	0

	file	"PWM.h"
	line	20

;initializer for _freq
	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	global	_pos
	global	_proporcional
	global	_error2
	global	_error1
	global	_poslast
	global	_suma
	global	_sumap
	global	_last_prop
	global	_derivativo
	global	_integral
	global	_m
	global	_error6
	global	_error5
	global	_error4
	global	_error3
	global	_sensoresP
	global	_CCPR2L
_CCPR2L	set	0x1B
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_PORTCbits
_PORTCbits	set	0x7
	global	_PORTE
_PORTE	set	0x9
	global	_PORTD
_PORTD	set	0x8
	global	_PORTC
_PORTC	set	0x7
	global	_PORTB
_PORTB	set	0x6
	global	_PORTA
_PORTA	set	0x5
	global	_PORTAbits
_PORTAbits	set	0x5
	global	_PORTDbits
_PORTDbits	set	0x8
	global	_PORTEbits
_PORTEbits	set	0x9
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_CCP2M2
_CCP2M2	set	0xEA
	global	_CCP2M3
_CCP2M3	set	0xEB
	global	_TMR2ON
_TMR2ON	set	0x92
	global	_CCP1M2
_CCP1M2	set	0xBA
	global	_CCP1M3
_CCP1M3	set	0xBB
	global	_CCP2Y
_CCP2Y	set	0xEC
	global	_CCP2X
_CCP2X	set	0xED
	global	_CCP1Y
_CCP1Y	set	0xBC
	global	_CCP1X
_CCP1X	set	0xBD
	global	_PR2
_PR2	set	0x92
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISE
_TRISE	set	0x89
	global	_TRISD
_TRISD	set	0x88
	global	_TRISC
_TRISC	set	0x87
	global	_TRISB
_TRISB	set	0x86
	global	_TRISA
_TRISA	set	0x85
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_TRISC1
_TRISC1	set	0x439
	global	_TRISC2
_TRISC2	set	0x43A
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "XT"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config BOREN = "OFF"
	config LVP = "OFF"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "OFF"
	file	"dist/default/production\WIPLOZ.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_pos:
       ds      4

_proporcional:
       ds      2

_error2:
       ds      2

_error1:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_position:
       ds      4

_poslast:
       ds      4

_suma:
       ds      4

_sumap:
       ds      4

_last_prop:
       ds      2

_diferencial:
       ds      2

_derivativo:
       ds      2

_integral:
       ds      2

_m:
       ds      2

_error6:
       ds      2

_error5:
       ds      2

_error4:
       ds      2

_error3:
       ds      2

_y:
       ds      2

_duty:
       ds      2

_sensoresP:
       ds      10

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"PWM.h"
	line	19
_TMR2PRESCALE:
       ds      4

psect	dataBANK0
	file	"WIPLOZ.c"
	line	73
_KI:
       ds      3

psect	dataBANK0
	file	"WIPLOZ.c"
	line	72
_KD:
       ds      3

psect	dataBANK0
	file	"WIPLOZ.c"
	line	71
_KP:
       ds      3

psect	dataBANK0
	file	"WIPLOZ.c"
	line	92
_setpoint:
       ds      2

psect	dataBANK0
	file	"WIPLOZ.c"
	line	76
_velatras:
       ds      2

psect	dataBANK0
	file	"WIPLOZ.c"
	line	75
_veladelante:
       ds      2

psect	dataBANK0
	file	"WIPLOZ.c"
	line	74
_vel:
       ds      2

psect	dataBANK0
	file	"PWM.h"
	line	20
_freq:
       ds      4

	file	"dist/default/production\WIPLOZ.X.production.s"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+25)
	movwf btemp-1
	movlw high(__pidataBANK0)
	movwf btemp
	movlw low(__pidataBANK0)
	movwf btemp+1
	movlw low(__pdataBANK0)
	movwf fsr
	fcall init_ram0
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+030h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssCOMMON)
	movwf	fsr
	movlw	low((__pbssCOMMON)+0Ah)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_external:	; 1 bytes @ 0x0
??_external:	; 1 bytes @ 0x0
?_Trigger:	; 1 bytes @ 0x0
?_EST:	; 1 bytes @ 0x0
?_inicia:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	ds	4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Trigger:	; 1 bytes @ 0x0
??_EST:	; 1 bytes @ 0x0
??_inicia:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        25
;!    BSS         58
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      4      14
;!    BANK0            80      0      73
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _external in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _external in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _external in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _external in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _external in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;!                                _EST
;!                            _Trigger
;!                             _inicia
;! ---------------------------------------------------------------------------------
;! (1) _inicia                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Trigger                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _EST                                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _external                                             4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _EST
;!   _Trigger
;!   _inicia
;!
;! _external (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      0      49       5       91.2%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      4       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      57      12        0.0%
;!ABS                  0      0      57       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 255 in file "WIPLOZ.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_EST
;;		_Trigger
;;		_inicia
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"WIPLOZ.c"
	line	255
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"WIPLOZ.c"
	line	255
	
_main:	
;incstack = 0
	callstack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	257
	
l1417:	
;WIPLOZ.c: 257: inicia();
	fcall	_inicia
	line	259
	
l1419:	
;WIPLOZ.c: 259: Trigger();
	fcall	_Trigger
	line	260
	
l1421:	
;WIPLOZ.c: 260: EST();
	fcall	_EST
	line	261
	
l1423:	
;WIPLOZ.c: 261: PORTEbits.RE2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),2	;volatile
	line	262
;WIPLOZ.c: 262: while(1){
	
l161:	
	line	267
	
l162:	
	line	262
	goto	l161
	global	start
	ljmp	start
	callstack 0
	line	270
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_inicia

;; *************** function _inicia *****************
;; Defined at:
;;		line 218 in file "WIPLOZ.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	218
global __ptext1
__ptext1:	;psect for function _inicia
psect	text1
	file	"WIPLOZ.c"
	line	218
	
_inicia:	
;incstack = 0
	callstack 6
; Regs used in _inicia: [wreg+status,2]
	line	221
	
l1405:	
;WIPLOZ.c: 221: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	222
;WIPLOZ.c: 222: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	223
;WIPLOZ.c: 223: INTCONbits.INTE = 1;
	bsf	(11),4	;volatile
	line	224
;WIPLOZ.c: 224: INTCONbits.INTF = 0;
	bcf	(11),1	;volatile
	line	228
;WIPLOZ.c: 228: OPTION_REGbits.INTEDG = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(129)^080h,6	;volatile
	line	234
	
l1407:	
;WIPLOZ.c: 234: TRISA=0b001111;
	movlw	low(0Fh)
	movwf	(133)^080h	;volatile
	line	235
;WIPLOZ.c: 235: TRISB=0b00000011;
	movlw	low(03h)
	movwf	(134)^080h	;volatile
	line	236
;WIPLOZ.c: 236: TRISC=0b10010000;
	movlw	low(090h)
	movwf	(135)^080h	;volatile
	line	237
;WIPLOZ.c: 237: TRISD=0b11111111;
	movlw	low(0FFh)
	movwf	(136)^080h	;volatile
	line	238
	
l1409:	
;WIPLOZ.c: 238: TRISE=0b000;
	clrf	(137)^080h	;volatile
	line	241
	
l1411:	
;WIPLOZ.c: 241: ADCON1= 0x06;
	movlw	low(06h)
	movwf	(159)^080h	;volatile
	line	243
;WIPLOZ.c: 243: PORTA=0b000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	244
;WIPLOZ.c: 244: PORTB=0x00;
	clrf	(6)	;volatile
	line	245
;WIPLOZ.c: 245: PORTC=0x00;
	clrf	(7)	;volatile
	line	246
;WIPLOZ.c: 246: PORTD=0x00;
	clrf	(8)	;volatile
	line	247
;WIPLOZ.c: 247: PORTE=0b000;
	clrf	(9)	;volatile
	line	250
	
l1413:	
;WIPLOZ.c: 250: PORTCbits.RC0=1;
	bsf	(7),0	;volatile
	line	253
	
l156:	
	return
	callstack 0
GLOBAL	__end_of_inicia
	__end_of_inicia:
	signat	_inicia,89
	global	_Trigger

;; *************** function _Trigger *****************
;; Defined at:
;;		line 189 in file "WIPLOZ.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	189
global __ptext2
__ptext2:	;psect for function _Trigger
psect	text2
	file	"WIPLOZ.c"
	line	189
	
_Trigger:	
;incstack = 0
	callstack 6
; Regs used in _Trigger: []
	line	190
	
l1387:	
	line	191
;WIPLOZ.c: 190: while (PORTAbits.RA0==0){
	
l138:	
	line	190
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(5),0	;volatile
	goto	u1481
	goto	u1480
u1481:
	goto	l138
u1480:
	line	192
	
l141:	
	return
	callstack 0
GLOBAL	__end_of_Trigger
	__end_of_Trigger:
	signat	_Trigger,89
	global	_EST

;; *************** function _EST *****************
;; Defined at:
;;		line 200 in file "WIPLOZ.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	200
global __ptext3
__ptext3:	;psect for function _EST
psect	text3
	file	"WIPLOZ.c"
	line	200
	
_EST:	
;incstack = 0
	callstack 6
; Regs used in _EST: [wreg+status,2]
	line	201
	
l1389:	
;WIPLOZ.c: 201: if(PORTDbits.RD7==0 && PORTDbits.RD6==1 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(8),7	;volatile
	goto	u1491
	goto	u1490
u1491:
	goto	l147
u1490:
	
l1391:	
	btfss	(8),6	;volatile
	goto	u1501
	goto	u1500
u1501:
	goto	l147
u1500:
	line	202
	
l1393:	
;WIPLOZ.c: 202: m=1;
	movlw	01h
	movwf	(_m)
	movlw	0
	movwf	((_m))+1
	line	204
;WIPLOZ.c: 204: }
	goto	l153
	line	205
	
l147:	
;WIPLOZ.c: 205: else if(PORTDbits.RD7==1 && PORTDbits.RD6==0){
	btfss	(8),7	;volatile
	goto	u1511
	goto	u1510
u1511:
	goto	l149
u1510:
	
l1395:	
	btfsc	(8),6	;volatile
	goto	u1521
	goto	u1520
u1521:
	goto	l149
u1520:
	line	206
	
l1397:	
;WIPLOZ.c: 206: m=2;
	movlw	02h
	movwf	(_m)
	movlw	0
	movwf	((_m))+1
	line	207
;WIPLOZ.c: 207: }
	goto	l153
	line	208
	
l149:	
;WIPLOZ.c: 208: else if(PORTDbits.RD7==1 && PORTDbits.RD6==1){
	btfss	(8),7	;volatile
	goto	u1531
	goto	u1530
u1531:
	goto	l1403
u1530:
	
l1399:	
	btfss	(8),6	;volatile
	goto	u1541
	goto	u1540
u1541:
	goto	l1403
u1540:
	line	209
	
l1401:	
;WIPLOZ.c: 209: m=3;
	movlw	03h
	movwf	(_m)
	movlw	0
	movwf	((_m))+1
	line	210
;WIPLOZ.c: 210: }
	goto	l153
	line	212
	
l1403:	
;WIPLOZ.c: 211: else{;WIPLOZ.c: 212: m=0;
	clrf	(_m)
	clrf	(_m+1)
	line	214
	
l153:	
	return
	callstack 0
GLOBAL	__end_of_EST
	__end_of_EST:
	signat	_EST,89
	global	_external

;; *************** function _external *****************
;; Defined at:
;;		line 121 in file "WIPLOZ.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	121
global __ptext4
__ptext4:	;psect for function _external
psect	text4
	file	"WIPLOZ.c"
	line	121
	
_external:	
;incstack = 0
	callstack 6
; Regs used in _external: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_external+2)
	movf	pclath,w
	movwf	(??_external+3)
	ljmp	_external
psect	text4
	line	122
	
i1l839:	
;WIPLOZ.c: 122: if(INTCONbits.INTF == 1){
	btfss	(11),1	;volatile
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l115
u21_20:
	line	124
	
i1l841:	
;WIPLOZ.c: 124: _delay((unsigned long)((100)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw	130
movwf	((??_external+0)+0+1)
	movlw	221
movwf	((??_external+0)+0)
	u155_27:
decfsz	((??_external+0)+0),f
	goto	u155_27
	decfsz	((??_external+0)+0+1),f
	goto	u155_27
	nop2
asmopt pop

	line	125
	
i1l843:	
;WIPLOZ.c: 125: if (PORTEbits.RE2 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(9),2	;volatile
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l113
u22_20:
	line	126
	
i1l845:	
;WIPLOZ.c: 126: PORTEbits.RE2 = 1;
	bsf	(9),2	;volatile
	line	127
;WIPLOZ.c: 127: }else
	goto	i1l114
	
i1l113:	
	line	128
;WIPLOZ.c: 128: PORTEbits.RE2 = 0;
	bcf	(9),2	;volatile
	
i1l114:	
	line	130
;WIPLOZ.c: 130: INTCONbits.INTF = 0;
	bcf	(11),1	;volatile
	line	132
	
i1l115:	
	movf	(??_external+3),w
	movwf	pclath
	swapf	(??_external+2),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_external
	__end_of_external:
	signat	_external,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
