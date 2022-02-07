/* ************************************************************************** */
/** spi2_write_register.c

  @Description
    Send data to SPI buffer.
 */
/* ************************************************************************** */

#include "accel_define.h"       // Some #define statements in this file might be used 

void spi2_write_register(uint8_t address, uint8_t data)
{   
    uint16_t write_frame;
    uint16_t trash;
    
    write_frame = ((uint16_t)address << 8) | data;
            
    delay(1);

    // enable accelerometer chip select

    // send "write_frame" to the SPI2 buffer                     
    // wait for the SPI2 buffer full bit       
    // clear SPI2 buffer using the "trash" variable                                        

    // disable accelerometer chip select
}


/* *****************************************************************************
 End of File
 */
