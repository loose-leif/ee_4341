/* ************************************************************************** */
/** spi2_setup.c

  @Description
    Setup SPI2 peripheral.
 */
/* ************************************************************************** */

#include "accel_define.h"           // Some #define statements in this file might be used 

void spi2_setup(void)
{
    TRISGbits.TRISG6 = 0;	    // set serial clock as an output
    TRISGbits.TRISG9 = 0;	    // set Accelerometer Chip Select as an output
    
    // disable chip select "ACCEL_CS"
    ACCEL_CS = 1;
    
    // clear SPI2CON register
    SPI2CON = 0;
    SPI2CON2 = 0;
    
    // clear SPI2BUF register
    SPI2BUF = 0;
    
    // 39.06 kHz
    SPI2BRG = 511;   
               
    // clear overflow flag in SPI2STAT register
    SPI2STATbits.SPIROV = 0;
    
    // framed support off  
    SPI2CONbits.FRMEN = 0;
    
    // 16 bit communication
    SPI2CONbits.MODE16 = 1;
    SPI2CONbits.MODE32 = 0;
    
    // 1 = Idle state for clock is a high level; active state is a low level
    SPI2CONbits.CKP = 1;
    
    // 0 = Serial output data changes on transition from Idle clock state to active clock state (see CKP bit)
    SPI2CONbits.CKE = 0;

    // master mode
    SPI2CONbits.MSTEN = 1;

    // sample data at the end of clock time
    SPI2CONbits.SMP = 1;
    
    // enable SPI2 (ON)
    SPI2CONbits.ON = 1;

   // DELETE LATER
            
    return;
    
    
}


/* *****************************************************************************
 End of File
 */
