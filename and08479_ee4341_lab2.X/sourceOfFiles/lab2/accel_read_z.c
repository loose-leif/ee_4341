/* ************************************************************************** */
/** accel_read_z.c

  @Description
    Read the Z-axis data from the LIS3DH accelerometer.
 */
/* ************************************************************************** */

#include "accel_define.h"       // Some #define statements in this file might be used 

float accel_read_z(void)
{
   ?type? Z_H; 
   ?type? Z_L; 
   ?type? Z;
   
   Z_H = spi2_read_register(OUT_Z_H);
   Z_L = spi2_read_register(OUT_Z_L);
   
   // Combine data from both registers
   // See Lab2 manual for instructions
   
   float value = Z * 0.000061;            // Convert to units of g
   return value;
}


/* *****************************************************************************
 End of File
 */
