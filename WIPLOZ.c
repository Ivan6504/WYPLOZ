/*
 * File:   WIPLOZ.c
 * Author: JOSE BARRON, IVAN IÑIGUEZ
 *
 * Created on 17 de marzo de 2023, 06:17 PM
 */

// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG//
#pragma config FOSC = XT        // Oscillator Selection bits (XT oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF       // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)


#define _XTAL_FREQ 4000000 
#include <xc.h>
#include "PWM.h"
//Declaracion de variables globales//
unsigned int y=0;
//Fin de la declaracion de variables globales//

void __interrupt(low_priority) external(){          //SE DECLARA LA RUTINA DE INTERRUPCION POR UN ENTE EXTERNO.
 if(INTCONbits.INTF == 1){                          //COMPRUEBA SI SE HA RECIBIDO UNA INTERRUPCION 
  //INSERTAR LO QUE HAY QUE HACER 
     
     
  
  ///////////////////////////////
  INTCONbits.INTF = 0;                               //LIMPIA LA BANDERA 
 }   
}

void EST(){
if(PORTDbits.RD7==0 && PORTDbits.RD6==1 ){
  m=1;  //MOD0 1
}
else if(PORTDbits.RD7==1 && PORTDbits.RD6==0){
  m=2;  //MODO 2
}
else if(PORTDbits.RD7==1 && PORTDbits.RD6==1){
  m=3;  //MODO 3
}
else{
  m=0;  //MODO 0
}
}

void inicia(){
    
 //CONFIGURACION DE LAS INTERRUPCIONES//
 INTCONbits.GIE    = 1;          //HABILITA LAS INTERRUPCIONES GLOBALES
 INTCONbits.PEIE   = 1;          //HABILITA LAS INTERRUPCIONES PERIFERICAS
 INTCONbits.INTE   = 1;          //HABILITA LAS INTERRUPCIONES EXTERNAS 
 //FIN DE LAS INTERRUPCIONES//
 
//CONFIGURACION DEL REGISTRO OPTION REG//
OPTION_REGbits.INTEDG = 1;   
//Fin de la programacion del OPTION REG// 


 //Inicializacion de los puertos//
//0 SALIDA 1 ENTRADA
TRISA=0b000000;         // Programaciòn inicial del puerto A como salidas
TRISB=0b00000000;       // Programaciòn inicial del puerto B como salidas
TRISC=0b10010000;       // Programaciòn inicial del puerto C como salidas
TRISD=0b00000000;       // Programaciòn inicial del puerto D como salidas
TRISE=0b000;            // Programaciòn inicial del puerto E como salidas
//Fin de la Inicializacion//    

//INICIALIZACION  DE LOS PUERTOS//
ADCON1= 0x06;  //SE CONFIGURAN LOS PUERTOS COMO DIGITALES  

PORTA=0b000000;          //LIMPIA EL PUERTO A .
PORTB=0x00;              //LIMPIA EL PUERTO B .
PORTC=0x00;              //LIMPIA EL PUERTO C .
PORTD=0x00;              //LIMPIA EL PUERTO D .
PORTE=0b000;             //LIMPIA EL PUERTO E .

return ;
 }

void main(void) {
inicia();                      //RUTINA QUE INICIA EL PIC 
PWM_ST();                      //SUBRUTINA QUE INICIALIZA EL PWM
PWM2_Duty(500);                //INICIA EN BASE LA SEÑAL CLK PWM
EST();
//Progrma principal// 
   while(1){       
   switch (y){
   case 0:           //ETRATEGIA 1

       
       
   break;
   
   
   case 1:           //ETRATEGIA 2
    
   break;
   
   
   case 2:           //ETRATEGIA 3
    
   break;
   
   
   case 3:           //ETRATEGIA 4
    
   break;
        
   }   
   } 
    return;
}

void lectura(){
    //prueba probando el git
    //ahora estoy en la rama general se supone
}

void PID(){
    
}
