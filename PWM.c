
#define _XTAL_FREQ 4000000 
#include <xc.h>
#include "PWM.h"
//Seleccion de modo del TIMER2//
/*  0000 = Capture/Compare/PWM disabled (resets CCPx module)
    0100 = Capture mode, every falling edge
    0101 = Capture mode, every rising edge
    0110 = Capture mode, every 4th rising edge
    0111 = Capture mode, every 16th rising edge
    1000 = Compare mode, set output on match (CCPxIF bit is set)
    1001 = Compare mode, clear output on match (CCPxIF bit is set)
    1010 = Compare mode, generate software interrupt on match (CCPxIF bit is set, CCPx pin is unaffected)
    1011 = Compare mode, trigger special event (CCPxIF bit is set, CCPx pin is unaffected); CCP1
           resets TMR1; CCP2 resets TMR1 and starts an A/D conversion (if A/D module is
           enabled)
    11xx = PWM mode
*/

int PWM_Max_Duty(){
 // RUTINA QUE DEFINE EL CICLO DE TRABAJO MAXIMO//    
 //        4000000/1000*4      == 1000
  return(_XTAL_FREQ/(freq*TMR2PRESCALE));
}

PWM1_Init(long freq){
  PR2 =((_XTAL_FREQ/(freq*4*TMR2PRESCALE)) - 1); //=249
  freq = freq;
}

PWM2_Init(long freq){
    
  PR2 = ((_XTAL_FREQ/(freq*4*TMR2PRESCALE)) - 1); // = 249
  freq = freq;
}

PWM1_Duty(unsigned int duty){
    
  if(duty<1024)  {    
    duty = ((float)duty/1023)*PWM_Max_Duty();
    CCP1X = duty & 2;
    CCP1Y = duty & 1;
    CCPR1L = duty>>2;
  }
}

PWM2_Duty(unsigned int duty){ 
  if(duty<1024){
    duty = ((float)duty/1023)*PWM_Max_Duty();
    CCP2X = duty & 2;
    CCP2Y = duty & 1;
    CCPR2L = duty>>2;
  }
}

void PWM1_Start(){
  CCP1M3 = 1;
  CCP1M2 = 1;
  #if TMR2PRESCALAR == 1
    T2CKPS0 = 0;
    T2CKPS1 = 0;
  #elif TMR2PRESCALAR == 4
    T2CKPS0 = 1;
    T2CKPS1 = 0;
  #elif TMR2PRESCALAR == 16
    T2CKPS0 = 1;
    T2CKPS1 = 1;
  #endif
  TMR2ON = 1;
  TRISC2 = 0;
}

void PWM1_Stop(){
  CCP1M3 = 0;
  CCP1M2 = 0;
}

void PWM2_Start(){
  CCP2M3 = 1;
  CCP2M2 = 1;
  #if TMR2PRESCALE == 1
    T2CKPS0 = 0;
    T2CKPS1 = 0;
  #elif TMR2PRESCALE == 4
    T2CKPS0 = 1;
    T2CKPS1 = 0;
  #elif TMR2PRESCALE == 16
    T2CKPS0 = 1;
    T2CKPS1 = 1;
  #endif
    TMR2ON = 1;
    TRISC1 = 0;
}

void PWM2_Stop(){
  CCP2M3 = 0;
  CCP2M2 = 0;
}

void PWM_ST(){
PWM1_Init(4000);
PWM2_Init(4000);
PWM1_Duty(0);
PWM2_Duty(0);
PWM1_Start();
PWM2_Start();    
}

//FIN DE LAS RUTINAS DEL PWM//

