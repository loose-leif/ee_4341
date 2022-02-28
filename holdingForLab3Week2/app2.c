/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app2.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "app2.h"
#include "queue.h"
#include "and08479_accelerometer_spi.h"
#include "io_setup.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

#define WHO_AM_I        0x0F
#define ACCEL_CS        LATGbits.LATG9
// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

APP2_DATA app2Data;
/* The queue used by both tasks. */
extern QueueHandle_t xQueue;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary local functions.
*/

//**************** Lab 3 Week 2 instructions Start ****************//

void uart1_setup(void)
{   
    
    U1MODEbits.BRGH = 0;
    U1MODEbits.UEN = 00;
    // BaudRate = 9600; Frequency = 40000000 Hz; BRG 259; 
    U1BRG = 259;
    // Enable transmit
    U1STAbits.UTXEN = 1;
    // Enable receive
    U1STAbits.URXEN = 1;
    // Enable UART (ON bit)
    
    U1MODEbits.ON = 1;

    __XC_UART = 1; 
    
}

void RTOS_SPI2_Test(void)
{
    //uint16_t read_frame;
    uint16_t value;

    //***** Read WHO_AM_I Register *****//
    
	// write to 'value' using spi2_read_register(...)
	// the address read from should be the WHO_AM_I address

    value = spi2_read_register(WHO_AM_I);
    
    if (value == 0x0033)
    {
        printf("Pass ");
    }
    else
    {
        printf("Fail ");
    }
    
}

//**************** Lab 3 Week 2 instructions End ****************//


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP2_Initialize ( void )

  Remarks:
    See prototype in app2.h.
 */

void APP2_Initialize ( void )
{
//**************** Lab 3 Week 2 instructions Start ****************//

    uart1_setup();

//**************** Lab 3 Week 2 instructions End ****************//
}


/******************************************************************************
  Function:
    void APP2_Tasks ( void )

  Remarks:
    See prototype in app2.h.
 */

void APP2_Tasks ( void )
{
//**************** Lab 3 Week 2 instructions Start ****************//

    double ulReceivedValue = 0; // same type as the one sent to the queue

//**************** Lab 3 Week 2 instructions End ****************//


    /* Wait until something arrives in the queue - this task will block
    indefinitely provided INCLUDE_vTaskSuspend is set to 1 in
    FreeRTOSConfig.h. */
    xQueueReceive( xQueue, &ulReceivedValue, portMAX_DELAY );

    /*  To get here something must have been received from the queue, but
    is it the expected value?  If it is, toggle the LED. */
    if( ulReceivedValue != 0.00)
    {

//**************** Lab 3 Week 2 instructions Start ****************//

   //     RTOS_SPI2_Test();	// this can be called here to test SPI functionality

        if (!BUTTON2)
        {
            printf("Y = %f            \r", ulReceivedValue); 	// don't change this
        }

//**************** Lab 3 Week 2 instructions End ****************//
        
        BSP_LEDToggle( BSP_LED_2 );
        vTaskDelay((TickType_t)100UL);
    }
}
 

/*******************************************************************************
 End of File
 */
