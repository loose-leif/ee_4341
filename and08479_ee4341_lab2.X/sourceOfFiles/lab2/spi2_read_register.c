/* ************************************************************************** */
/** spir2_read_register.c

  @Description
    Read data from SPI2 buffer.
 */
/* ************************************************************************** */

#include "accel_define.h"       // Some #define statements in this file might be used 

int16_t spi2_read_register(uint8_t address)
{
    uint16_t read_frame;
    uint16_t value;
    
    read_frame = (((uint16_t)address|0x80) << 8) | 0x00;

    delay(1);

    // enable accelerometer chip select

    // send "read_frame to SPI2 buffer                   
    // wait for the SPI2 buffer full bit      
    // read the SPI2 buffer contents with the "value" variable                                      

    // disable accelerometer chip select
    
    return value;
}


/* *****************************************************************************
 End of File
 */
