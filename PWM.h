/* 
 * File:   PWM_H
 * Author: JOSE :)
 * Comments: uwu?
 * Revision history: 05/03/2023
 */

#ifndef PWM_H
#define	PWM_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <xc.h>         // include processor files - each processor file is guarded. 

//variables//
unsigned int duty;             //VARIABLE UTILIZADA PARA DEFINIR EL CICLO DE TRABAJO 
long TMR2PRESCALE = 4;        //SE DEFINE EL VALOR QUE TOMA EL PRESCALADOR DEL TMR2//*PUEDE TOMAR VALORES DE 1 4 16 
long freq = 1000;            //FRECUENCIA A TOMAR COMO BASE del TMR2

//funciones//
PWM2_Init(long freq);
PWM2_Duty(unsigned int duty);
PWM1_Init(long freq);
PWM1_Duty(unsigned int duty);
void PWM2_Start();
void PWM2_Stop();
void PWM1_Start();
void PWM1_Stop();
void PWM_ST();

//Asignaciones//

#endif	/* PWM_H */

