/* ************************************************************************** */
/** x500_main.c

  @Description
    Main file.
 
 */
/* ************************************************************************** */

#include "io_setup.h"
#include "xc.h"


volatile uint16_t MAXCOUNT = 2500;

// 10ms 12501
// 2ms = 2500

volatile int check = 0;


void task1(void){
    
    int x = 1+1;
    
}

void task2(void){
    
    int y = 1+1;
    
}

void task3(void){
    
    int z = 1+1;
    
}

void __ISR(_TIMER_1_VECTOR, IPL5SOFT)_TIMER1_HANDLER(void){
    
    IFS0bits.T1IF = 0;
    check = 1;
    
}

void setup_timer(void){
    
    INTCONSET = _INTCON_MVEC_MASK;
    
    __builtin_disable_interrupts();
    
    T1CONbits.ON = 0;
    
    PR1 = MAXCOUNT;
    TMR1 = 0;
    T1CONbits.TCKPS = 2;
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
    //delay(100);                  // 100 ms delay as precaution

    delay(1);
    
    while(1)
    { 
        
        if(check){
            check = 0;
            task1();
            task2();
            task3();
            
        }
    
    }

    return 0;
}


/* *****************************************************************************
 End of File
 */
