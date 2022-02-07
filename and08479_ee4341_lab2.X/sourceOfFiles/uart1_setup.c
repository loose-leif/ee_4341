/* ************************************************************************** */
/** uart1_setup.c

  @Description
    Sets up UART1 with a baud rate of 9600.
 
 */
/* ************************************************************************** */

#include <xc.h>
#include "uart1_setup.h"

void uart1_setup(void)
{   
    // BRGH OFF; UEN TX_RX; 
    U1MODEbits.BRGH = 0;
    U1MODEbits.UEN = 00;
    // BaudRate = 9600; Frequency = 40000000 Hz; BRG 259; 
    U1BRG = 259;
    // Enable transmit
    U1STAbits.UTXEN = 1;
    // Enable receive
    U1STAbits.URXEN = 1;
    // Enable UART (ON bit)
    
    U1MODEbits.ON = 1;

    __XC_UART = 1;              // Code is configured to use UART1 for printf()
}

/* *****************************************************************************
 End of File
 */

