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

//ETIQUETAS

//------------------Sensores--------------
#define SRR PORTDbits.RD0
#define SR PORTDbits.RD1
#define SC PORTDbits.RD2
#define SL PORTDbits.RD3
#define SLL PORTDbits.RD4
#define SX PORTDbits.RD5   //sensor extra por si se usa

#define SenLin1F PORTBbits.RB0    //sensor 1 frontal
#define SenLin2F PORTAbits.RA1
#define SenLin1B PORTAbits.RA2    //sensor 1 atras
#define SenLin2B PORTAbits.RA3


//------------------Control--------------

//bits selector de estrategia
#define LSB PORTDbits.RD6       
#define MSB PORTDbits.RD7

//Arrancador
#define GO PORTAbits.RA0      
#define READY PORTBbits.RB1 

//Motores
#define MI1 PORTBbits.RB2 
#define MI2 PORTBbits.RB3 
#define MD1 PORTBbits.RB4 
#define MD2 PORTBbits.RB5 
#define stby PORTCbits.RC0 
#define PWML PORTCbits.RC1
#define PWMR PORTCbits.RC2 

//------------------Otros--------------
#define roverto PORTAbits.RA4

//------------Var Globales-------------
unsigned int y=0;
int sensoresP[5];
long int sumap, suma, pos, poslast, position;
//Constantes
float KP=0.24;//constante proporcional   
float KD=4.628;//constante derivativa
float KI=0.0025;//constante integral
int vel=100;//VELOCIDAD MÁXIMA DEL ROBOT MÁXIMA 255
int veladelante=175;//VELOCIDAD DEL FRENO DIRECCIÓN ADELANTE
int velatras=85;//VELOCIDAD DEL FRENO DIRECCIÓN ATRÁS
/// datos para la integral
int error1=0;
int error2=0;
int error3=0;
int error4=0;
int error5=0;
int error6=0;

//Var PID
int proporcional=0;
int integral=0;
int derivativo=0;
int diferencial=0;
int last_prop;
int setpoint=250;

//----------Subrutina de I EXT-------------
void __interrupt(low_priority) external(){          
 if(INTCONbits.INTF == 1){                          //COMPRUEBA SI SE HA RECIBIDO UNA INTERRUPCION 
  //INSERTAR LO QUE HAY QUE HACER 
     
     
  
  ///////////////////////////////
  INTCONbits.INTF = 0;                               //LIMPIA LA BANDERA 
 }   
}

void EST(){
if(MSB==0 && LSB==1 ){
  m=1;  //MOD0 1
}
else if(MSB==1 && LSB==0){
  m=2;  //MODO 2
}
else if(MSB==1 && LSB==1){
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
TRISA=0b001111;   //ojo con ra4, no se si funcione xd        
TRISB=0b00000011;       
TRISC=0b10010000;       
TRISD=0b11111111;       
TRISE=0b000;            
//Fin de la Inicializacion//    

ADCON1= 0x06;  //SE CONFIGURAN LOS PUERTOS COMO DIGITALES  

PORTA=0b000000;          //LIMPIA EL PUERTO A .
PORTB=0x00;              //LIMPIA EL PUERTO B .
PORTC=0x00;              //LIMPIA EL PUERTO C .
PORTD=0x00;              //LIMPIA EL PUERTO D .
PORTE=0b000;             //LIMPIA EL PUERTO E .

//inicia el driver del motor
stby=1;

return ;
 }

void main(void) {
inicia();                      //RUTINA QUE INICIA EL PIC 
PWM_ST();                      //SUBRUTINA QUE INICIALIZA EL PWM
EST();                         //lee la estrategia
Trigger();                     //Subrutina que espera el arrancador 
//se ejecuta en loop hasta apagarse
while(1){
Lectura();                     //Lee el estado de los sensores de posicion
Frenos();
PID();                         //Aplica control PID
Lee_Linea();                      //lee el estado de los otros sensores de linea sin interrupcion y aplica la correcion
}

}

void Lectura(){
    sensoresP[0]=SLL;
    sensoresP[1]=SL;
    sensoresP[2]=SC;
    sensoresP[3]=SR;
    sensoresP[4]=SRR;
    
    sumap=(400*sensoresP[0]+300*sensoresP[1]+200*sensoresP[3]+100*sensoresP[3]+0*sensoresP[4]);
    suma=(sensoresP[0]+sensoresP[1]+sensoresP[3]+sensoresP[3]+sensoresP[4]);
    pos=(sumap/suma);
    
    if(poslast<=200 && pos==-1){
    pos=0;
    }
    if(poslast>=500 && pos==-1){
    pos=700;
    }
    poslast=pos;
    return pos;
}

void PID(){
  proporcional=pos-setpoint;
  derivativo=proporcional-last_prop;
  integral=error1+error2+error3+error4+error5+error6;
  last_prop=proporcional;
  error6=error5;
  error5=error4;
  error4=error3;
  error3=error2;
  error2=error1;
  error1=proporcional;
  int diferencial=(proporcional*KP) + (derivativo*KD) + (integral*KI);
  if(diferencial > vel) diferencial=vel;
  else if(diferencial < -vel) diferencial=-vel;
  (diferencial < 0)?
  motores(vel, vel+diferencial):motores(vel-diferencial, vel);
    
    
}

void motores(int VI, int VD){
   //Motor izquierdo
  if(VI>=0){
    MI1 = 1;
    MI2 = 0;
  }
  else{
    MI1 = 0;
    MI2 = 1;
    VI=VI*(-1);
  }
  PWM1_Duty(VD);
  
   //motor derecho
  if(VD>=0){
    MD1 = 1;
    MD2 = 0;
  }
  else{
    MD1 = 0;
    MD2 = 1;
    VD=VD*(-1);
  }
   PWM2_Duty(VI);
}

void Frenos(){
  if(pos<=50){
    motores(veladelante, -velatras);
  }
  if(pos>=350){
    motores(-velatras, veladelante);
  }
}



void Trigger(){
    while (GO==0){
    }
}



void Lee_Linea(){
    
}

