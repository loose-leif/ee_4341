/* ************************************************************************** */
/** spi2_setup.c

  @Description
    Setup SPI2 peripheral.
 */
/* ************************************************************************** */

#include "accel_define.h"           // Some #define statements in this file might be used 

void spi2_setup(void)
{
    TRISGbits.TRISG6 = ?;	    // set serial clock as an output
    TRISGbits.TRISG9 = ?;	    // set Accelerometer Chip Select as an output
    
    // disable chip select "ACCEL_CS"
        
    // clear SPI2CON register
    // clear SPI2BUF register

    // SPI2BRG = ?   
               
    // clear overflow flag in SPI2STAT register
    
    // framed support off    
    // 16 bit communication
    
     
    // CKE = ?
                      // Look at the pictures on pages 4-5 in LAB2 manual 
    // CKP = ?                      // Very important to know how to figure these out

    // master mode
    // sample data at the end of clock time
    
    // enable SPI2 (ON)

}


/* *****************************************************************************
 End of File
 */
