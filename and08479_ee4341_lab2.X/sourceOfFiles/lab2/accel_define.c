/* ************************************************************************** */
/** accel_define.c

  @Description
    Delay function and define statements.
 */
/* ************************************************************************** */

#include "accel_define.h"

// this file is only necessary when you are creating your library

void delay(int ms)
{
    int i,j;
    
    for(i=0;i<ms;i++){
        
        for(j=0;j<9996;j++){
            
            asm("NOP");
            
        }
          
    }
}

/* *****************************************************************************
 End of File
 */
