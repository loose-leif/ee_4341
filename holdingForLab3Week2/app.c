/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

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

#include "app.h"
#include "queue.h"
#include "and08479_accelerometer_spi.h"
#include "io_setup.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************
/* The rate at which data is sent to the queue.  The 200ms value is converted
to ticks using the portTICK_RATE_MS constant. */
#define QUEUE_SEND_FREQUENCY_MS         ( 200 / portTICK_PERIOD_MS )
/* The number of items the queue can hold.  This is 1 as the receive task
will remove items as they are added, meaning the send task should always find
the queue empty. */
#define QUEUE_LENGTH                    ( 1 )

/* Defines that were in accel_define.h, but we're moving here */

#define OUT_X_L         0x28
#define OUT_X_H         0x29
#define OUT_Y_L         0x2A
#define OUT_Y_H         0x2B
#define OUT_Z_L         0x2C
#define OUT_Z_H         0x2D

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

APP_DATA appData;
/* The queue used by both tasks. */

QueueHandle_t xQueue = NULL;

//**************** Lab 3 Week 2 instructions Start ****************//

double ulValueToSend1 = 0.00;		
double ulValueToSend2 = 1.00;

//**************** Lab 3 Week 2 instructions End ****************//

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

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
//**************** Lab 3 Week 2 instructions Start ****************//

    // call the spi2 setup function
    spi2_setup();

    // call the accel setup function
    accel_setup();

   /* Create the queue. */
   xQueue = xQueueCreate( QUEUE_LENGTH, sizeof(double) );
//**************** Lab 3 Week 2 instructions End ****************//
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
    // write to ulValueToSend1 with accel_read_x()
    // write to ulValueToSend2 with accel_read_y()
    
    ulValueToSend1 = accel_read_x();
    ulValueToSend2 = accel_read_y();
    
   /* Send to the queue - causing the queue receive task2 to unblock and
   toggle the LED.  0 is used as the block time so the sending operation
   will not block - it shouldn't need to block as the queue should always
   be empty at this point in the code. */
   xQueueSend( xQueue, &ulValueToSend1, 0U );
   /* Send to the queue - causing the queue receive task1 to unblock and
   toggle the LED.  0 is used as the block time so the sending operation
   will not block - it shouldn't need to block as the queue should always
   be empty at this point in the code. */
   xQueueSend( xQueue, &ulValueToSend2, 0U );
   

   /* Place this task in the blocked state until it is time to run again.
	The block time is specified in ticks, the constant used converts ticks
   to ms.  While in the Blocked state this task will not consume any CPU
   time. */
   vTaskDelay(QUEUE_SEND_FREQUENCY_MS );
}
 

/*******************************************************************************
 End of File
 */
