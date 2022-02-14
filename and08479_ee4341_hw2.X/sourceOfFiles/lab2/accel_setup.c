/* ************************************************************************** */
/** accel_setup.c

  @Description
    Send the setup sequence found in the LIS3DH Appnote.
 */
/* ************************************************************************** */

#include "accel_define.h"       // Some #define statements in this file might be used 

// just because some arguments are filled in does not mean that they are the default value
// if the argument says "?default value?" then send the default value found in the data sheet

void accel_setup(void)
{
    spi2_write_register(CTRL_REG1, 0x47);
    spi2_write_register(?Register?, ?default value?);
    spi2_write_register(?Register?, ?default value?);
    spi2_write_register(CTRL_REG4, 0x88);
    spi2_write_register(CTRL_REG5, 0x40);
    spi2_write_register(?Register?, ?default value?);
    spi2_write_register(REFERENCE,  ?default value?);
    spi2_write_register(?Register?, ?default value?);
    spi2_write_register(?Register?, ?default value?);
    spi2_write_register(?Register?, ?default value?);
    spi2_write_register(FIFO_CTRL, 0x80);
}


/* *****************************************************************************
 End of File
 */
