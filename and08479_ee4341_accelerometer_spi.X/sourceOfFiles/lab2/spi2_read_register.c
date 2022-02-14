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
    ACCEL_CS = 0;
    
    // send "read_frame to SPI2 buffer
    SPI2BUF = read_frame;
    
    // wait for the SPI2 buffer full bit  
    while(SPI2STATbits.SPIRBF == 0);
    
    // read the SPI2 buffer contents with the "value" variable                                      
    value = SPI2BUF;
    
    // disable accelerometer chip select
    ACCEL_CS = 1;
    
    return value;
}


/* *****************************************************************************
 End of File
 */
