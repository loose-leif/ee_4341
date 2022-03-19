/*
** RWTest.c
**
*/
// configuration bit settings, Fcy=72 MHz, Fpb=36 MHz

#pragma config POSCMOD=XT, FNOSC=PRIPLL
#pragma config FPLLIDIV=DIV_2, FPLLMUL=MUL_18, FPLLODIV=DIV_1
#pragma config FPBDIV=DIV_2, FWDTEN=OFF, CP=OFF, BWP=OFF

#include "SDMMC.h"
#include <stdio.h>
#include <string.h>
#include <xc.h>

#define START_ADDRESS 0 // start block address
#define N_BLOCKS 1 // number of blocks 

#define LED3 _RD2  // visual feedback about SD usage status - fail
#define LED2 _RD1  // visual feedback about SD usage status - pass

 void delay(int ms){

 } // add your delay function here
 
main(void){

      // code to unlock PPS
    SDI1Rbits.SDI1R = 0b1010;  // map RC4 to SDI1
   
    RPD9Rbits.RPD9R = 0b0111; // map SS1 to RD9
    RPD0Rbits.RPD0R = 0b1000; // map SDO1 to RD0
     // code to lock PPS
    
    // set RD1 and RD2 as outputs:
 

    TRISB = 0x0000;
    
    LED3 = 0;
    LED2 = 0;
    
    LBA addr;
    int i, j, r;
    
    // 1. initialize data
    initData();
    // 2. initialize SD/MMC module
    
    // 3. fill the buffer with pattern
    
    // 4. wait for the card to be inserted
    
    // 5. fill 16 groups of N_BLOCK sectors with data
    
    // 6. verify the contents of each sector written
    
    // 7. indicate successful execution
    LED3 = 1;
    
    // main loop
    while(1);

	
    // If this is reached --> failure   
    End:
    
    LED2 = 1;
    
    // main loop
    while(1);
}