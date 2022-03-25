/*
** RWTest.c
**
*/
// configuration bit settings, Fcy=72 MHz, Fpb=36 MHz

#pragma config POSCMOD=XT, FNOSC=PRIPLL
#pragma config FPLLIDIV=DIV_2, FPLLMUL=MUL_18, FPLLODIV=DIV_1
#pragma config FPBDIV=DIV_2, FWDTEN=OFF, CP=OFF, BWP=OFF

#include "SDMMC.h"
#include "uart1_setup.h"
#include <stdio.h>
#include <string.h>
#include <xc.h>


#define START_ADDRESS 10000 // start block address
#define N_BLOCKS 10 // number of blocks 

#define LED3 _RD2  // visual feedback about SD usage status - fail
#define LED2 _RD1  // visual feedback about SD usage status - pass

 void delay(int ms){

    int i,j; 
    
    for(i=0;i<ms;i++){
        
        for(j=0;j<9996;j++){
            
            asm("NOP");
            
        }
          
    }
     
 } // add your delay function here DONE
 
int main(void){
 
    TRISDbits.TRISD1 = 0;
    TRISDbits.TRISD2 = 0;

    TRISB = 0x0000;
    
    LED3 = 0;
    LED2 = 0;
    
    //while(1);
    
    LBA addr;
    int i, j, r;
    
    SYSKEY = 0x12345678;
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;
    
    CFGCONbits.IOLOCK = 0;
    
    // changed
    
        SDI1Rbits.SDI1R = 0b1010;  // map RC4 to SDI1
        RPD9Rbits.RPD9R = 0b0111; // map SS1 to RD9
        RPD0Rbits.RPD0R = 0b1000; // map SDO1 to RD0
    
    // changed
    
    
    U1RXRbits.U1RXR = 0b0010;
    RPF5Rbits.RPF5R = 0b0011;
    
    CFGCONbits.IOLOCK = 1;
    
    SYSKEY = 0x00000000; 
    
    // uart setup
    
    U1MODEbits.BRGH = 0;
    U1MODEbits.UEN = 00;
    // BaudRate = 9600; Frequency = 40000000 Hz; BRG 259; 
    U1BRG = 233;
    // Enable transmit
    U1STAbits.UTXEN = 1;
    // Enable receive
    U1STAbits.URXEN = 1;
    // Enable UART (ON bit)
    
    U1MODEbits.ON = 1;

    __XC_UART = 1; 
    
    // uart setup end
    
    // 1. initialize data
    
    initData();
    
    // 2. initialize SD/MMC module
    
    initSD();
    
    //printf("hello\n\r");
    
    // 3. fill the buffer with pattern
    
    for( i=0; i<B_SIZE; i++) 
        data[i]= i;
            
    // 4. wait for the card to be inserted
    
    while(!getCD());
    
    //printf("end chip\n\r");
    
    i = initMedia();
    
    if (i) // init card 
    { // if error code returned 
        //clrLCD(); 
        //putsLCD( " Failed Init " ); 
        
        //printf("%d\n\r", i);
        
        //printf("end media error\n\r");
        
        goto End; 
    }
    
    // 5. fill 16 groups of N_BLOCK sectors with data
 
    addr = START_ADDRESS;
    
    for( j=0; j<16; j++)
    {
        for( i=0; i<N_BLOCKS; i++)
        {
            if (!writeSECTOR( addr+i*j, data))
            { // writing failed
                
                printf("write fail error\n\r");
                
            goto End;
            }
        } // i
    } // j
    
    printf("end write sector\n\r");
    
    // 6. verify the contents of each sector written
    addr = START_ADDRESS;
    
    for( j=0; j<16; j++)
    {
        for( i=0; i<N_BLOCKS; i++)
        { // read back one block at a time
            if (!readSECTOR( addr+(i*j), buffer))
            { // reading failed
                //putsLCD( "Failed to Read");
                printf("read1 sector\n\r");
                goto End;
            }
            // verify each block content
            if ( memcmp( data, buffer, B_SIZE))
            { // mismatch
                //putsLCD( "Failed to Match");
                printf("read2 sector");
                goto End;
            }
        } // i

    } // j
    
    printf("end read sector\n\r");
    
    // 7. indicate successful execution
    LED3 = 1;
    
    // main loop
    while(1);

    // If this is reached --> failure   
    End:
    
    LED2 = 1;
    
    printf("end fail\n\r\n\r\n\r");
    
    // main loop
    while(1);
}