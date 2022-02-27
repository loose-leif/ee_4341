/* ************************************************************************** */
/** x500_main.c

  @Description
    Main file.
 
 */
/* ************************************************************************** */

#include "io_setup.h"


void __ISR(_TIMER_1_VECTOR, ipl3)Timer1ISR(void){
    
    IFS0bits.T1IF = 0;
    TMR1 = 0;
    TRISBbits.TRISB0 = 1;
    
}

void setup_timer(void){
    
    __builtin_disable_interrupts();
    
    PR1 = 1000;
    TMR1 = 0;
    T1CONbits.TCKPS = 3;
    T1CONbits.TCS = 0;
    IPC1bits.T1IP = 5;
    IPC1bits.T1IS = 0;
    IFS0bits.T1IF = 0;
    IEC0bits.T1IE = 1;
    T1CONbits.ON = 1;
    
    
    __builtin_enable_interrupts();
    
}

void setup(void)
{
    io_setup();
    setup_timer();
}

int main(void)
{
    setup();
    delay(100);                  // 100 ms delay as precaution

    delay(1);
    
    while(IFS0bits.T1IF);
    
    while(1)
    { 
        buttons();
    }

    return 0;
}


/* *****************************************************************************
 End of File
 */
