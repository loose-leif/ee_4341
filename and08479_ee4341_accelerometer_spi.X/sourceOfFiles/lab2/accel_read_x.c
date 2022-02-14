/* ************************************************************************** */
/** accel_read_x.c

  @Description
    Read X-axis data from the LIS3DH accelerometer.
 */
/* ************************************************************************** */

#include "accel_define.h"           // Some #define statements in this file might be used 

float accel_read_x(void)
{
   int16_t X_H; 
   int16_t X_L; 
   int16_t X;
   
   X_H = spi2_read_register(OUT_X_H);
   X_L = spi2_read_register(OUT_X_L);
   
   // Combine data from both registers
   // See Lab2 manual for instructions
   
   X_H &= 0b0000000011111111;
   
   X = (X_H << 8) | X_L;

   float value = X * 0.000061;            // Convert to units of g
   return value;
}


/* *****************************************************************************
 End of File
 */
