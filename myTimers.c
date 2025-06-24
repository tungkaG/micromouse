#include "myTimers.h"
#include "IOconfig.h"
#include "myPWM.h"
#include "dma.h"
#include "motorEncoders.h"
#include "serialComms.h"
#include <stdio.h>


void initTimer1(unsigned int period) 
{
    //unsigned TimerControlValue;
    
    T1CON = 0;              // ensure Timer 1 is in reset state
    //TimerControlValue=T1CON;
 
    T1CONbits.TCKPS = 0b10; // FCY divide by 64: tick = 2.4us (Tcycle=37.5ns)
    T1CONbits.TCS = 0;      // select internal FCY clock source
    T1CONbits.TGATE = 0;    // gated time accumulation disabled
    TMR1 = 0;
    PR1 = period;           // set Timer 1 period register ()
    IFS0bits.T1IF = 0;      // reset Timer 1 interrupt flag
    IPC0bits.T1IP = 4;      // set Timer1 interrupt priority level to 4
    IEC0bits.T1IE = 1;      // enable Timer 1 interrupt
    T1CONbits.TON = 0;      // leave timer disabled initially
}

unsigned int setupTimer1(const unsigned int ms) {
    T1CON = 0;              // ensure Timer 1 is in reset state
    
    // highest possible timer is 256*37.5*10^-9 * 65 535 = 0.6291s = 629ms
    if (ms > 629) {
        return 0;
    }
    
    double raw_ticks_count = ms / 0.0000375;
    
    int tckpsFactors[] = {1,8,64,256};
    int tckpsOptions[] = {0b00, 0b01, 0b10, 0b11};
    long period = (long) (raw_ticks_count);
    
    for (unsigned i = 0; i < 4; i++) {
        if (period <= 65535) {
            // fits with current config
            T1CONbits.TCKPS = tckpsOptions[i]; // FCY divide by smallest possible factor
            PR1 = (int) period;           // set corresponding Timer 1 period register ()
            break;
        }
        period = (long) (raw_ticks_count / tckpsFactors[i+1]); 
    }
    
    T1CONbits.TCS = 0;      // select internal FCY clock source
    T1CONbits.TGATE = 0;    // gated time accumulation disabled
    TMR1 = 0;
    IFS0bits.T1IF = 0;      // reset Timer 1 interrupt flag
    IPC0bits.T1IP = 4;      // set Timer1 interrupt priority level to 4
    IEC0bits.T1IE = 1;      // enable Timer 1 interrupt
    T1CONbits.TON = 0;      // leave timer disabled initially
    
    return 1;
}

unsigned int setupTimer2(const unsigned int ms) {
    T2CON = 0;              // ensure Timer 2 is in reset state
    
    // highest possible timer is 256*37.5*10^-9 * 65 535 = 0.6291s = 629ms
    if (ms > 629) {
        return 0;
    }
    
    double raw_ticks_count = ms / 0.0000375;
    int tckpsFactors[] = {1,8,64,256};
    int tckpsOptions[] = {0b00, 0b01, 0b10, 0b11};
    long period = (long) (raw_ticks_count);
    
    for (unsigned i = 0; i < 4; i++) {
        if (period <= 65535) {
            // fits with current config
            T2CONbits.TCKPS = tckpsOptions[i]; // FCY divide by smallest possible factor
            PR2 = (int) period;           // set corresponding Timer 1 period register ()
            break;
        }
        period = (long) (raw_ticks_count / tckpsFactors[i+1]); 
    }
    
    T2CONbits.TCS = 0;      // select internal FCY clock source
    T2CONbits.TGATE = 0;    // gated time accumulation disabled
    TMR2 = 0;
    IFS0bits.T2IF = 0;      // reset Timer 2 interrupt flag
    IPC1bits.T2IP = 3;      // set Timer2 interrupt priority level to 3
    IEC0bits.T2IE = 1;      // enable Timer 2 interrupt
    T2CONbits.TON = 0;      // leave timer disabled initially
    
    return 1;
}

void startTimer1(void) 
{
    T1CONbits.TON = 1; //
}

void startTimer2(void) 
{
    T2CONbits.TON = 1; //
}

// name of interrupt function from x16 compilerManual
void __attribute__((__interrupt__, auto_psv)) _T1Interrupt(void)
{
    // static int myCount=0;
    static int mySendChar='A';
    IFS0bits.T1IF = 0;           // reset Timer 1 interrupt flag 
    // myCount++;
    
    /* 
    if (myCount >= 50) { // toggle every second
        LED6=~LED6;
        myCount = 0;
    } 
     * */
    
    // if adcData[0]
    if (TEST_SENSOR > 2000) {
        LED6=~LED6;
    }
    
    
    // U1TXREG=mySendChar;
    mySendChar++;
    if (mySendChar > 'Z') {
        mySendChar = 'A';
    }
    
    // float curr_rad = getPositionInRad();
    float curr_rad = getVelocityInRadPerSecond()*0.159155;
    char radStr[100];
    sprintf(radStr, " %8.4f\n, ", curr_rad); // velocity in rotations/second
            
    putsUART1(radStr);
}//

// name of interrupt function from x16 compilerManual
void __attribute__((__interrupt__, auto_psv)) _T2Interrupt(void)
{
    /*
    IFS0bits.T2IF = 0;           // reset Timer 2 interrupt flag 
    LED4=~LED4;
    LED5=~LED5;
    LED6=~LED6;
    LED7=~LED7;
     * */
    
    static float pwmCounter = 0.01;
    static unsigned int upwards = 1; 
    IFS0bits.T2IF = 0;           // reset Timer 2 interrupt flag 
    if (pwmCounter >= 1.00) {
        upwards = 0;
    } else if (pwmCounter <= 0.01) {
        upwards = 1;
    }
    
    if (upwards == 1) {
        pwmCounter += 0.01;
    } else {
        pwmCounter -= 0.01;
    }

    // TODO: function that set_P1DC1(0.03) -> set PWM width to 3% 
    P1DC1 = (int) (pwmCounter*MYPWM_MAX);
    
    /*
    static int myCount2=0;
    IFS0bits.T2IF = 0;           // reset Timer 2 interrupt flag 
    myCount2++;
    if (myCount2 >= 2) { // toggle every second
        LED4=~LED4;
        LED5=~LED5;
        LED6=~LED6;
        LED7=~LED7;
        myCount2 = 0;
    }
     * */

}//
