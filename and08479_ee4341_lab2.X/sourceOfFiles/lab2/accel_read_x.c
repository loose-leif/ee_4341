/* ************************************************************************** */
/** accel_read_x.c

  @Description
    Read X-axis data from the LIS3DH accelerometer.
 */
/* ************************************************************************** */

#include "accel_define.h"           // Some #define statements in this file might be used 

float accel_read_x(void)
{
   ?type? X_H; 
   ?type? X_L; 
   ?type? X;
   
   X_H = spi2_read_register(OUT_X_H);
   X_L = spi2_read_register(OUT_X_L);
   
   // Combine data from both registers
   // See Lab2 manual for instructions

   float value = X * 0.000061;            // Convert to units of g
   return value;
}


/* *****************************************************************************
 End of File
 */
