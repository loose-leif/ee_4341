/*
** SDMMC.c SD card interface
*/
#include <xc.h>
#include "SDMMC.h"

// I/O definitions
// NOTE: Do not use the pins given
// by the MassStorage.pdf file. To find the 
// correct pinout, use the SDCardBoard and
// IO Expansion Board Information Sheet PDF's
// to map the pins to the top-right slot on the
// expansion board.
#define SDWP ? // Write Protect input
#define SDCD ? // Card Detect input
#define SDCS ? // Card Select output


// Macros from reference file go here


// SD card commands from reference file go here


#define I_TIMEOUT 10000
#define R_TIMEOUT 25000
#define W_TIMEOUT 250000

void initSD(void){

    // disable SD Card for initialization

    // Set SPI baud rate to 250 kHz

} // initSD

unsigned char writeSPI(unsigned char byte){

}// write a byte using SPI

int sendSDCmd(unsigned char c, unsigned a, unsigned crc) {

    // enable SD card

    // send a 6-byte command packet over SPI

    // read 8 bytes over SPI
    // if any byte is not 0xFF, return that byte


} // sendSDCmd

int initMedia(void){
    // Note: initMedia will return different values corresponding to error conditions
    // returns 0: if successful
    // return E_COMMAND_ACK: if failed to acknowledge reset command
    // return E_INIT_TIMEOUT: if failed to initialize

    int i, r;

    // 1. with the card NOT selected
    
    // 2. send 80 clock cycles start up
    
    // 3. now select the card
    
    // 4. send a single RESET command, then disable SD, and
    // be sure to check if the command acknowledge failed
    
    // 5. send repeatedly INIT until Idle terminates, and
    // be sure to check if the initialization failed due to timeout
    
    // 6. increase speed: disable SPI first, change settings and re-enable

} // init media

int readSECTOR( LBA a, char *p){

    // a LBA of sector requested
    // p pointer to sector buffer
    // returns TRUE if successful

    int r, i;

    // 1. send READ command, and check if command was accepted
        
    // 2. wait for a DATA_START response for some time (use R_TIMEOUT)

        // 3. if it did not timeout, read 512 byte of data

            // 4. ignore CRC (read 2 bytes but do nothing with them)
    
    // 5. remember to disable the card, return TRUE if DATA_START was previously received, or
    // false otherwise.

} // readSECTOR

int writeSECTOR(LBA a, char *p){

    // a LBA of sector requested
    // p pointer to sector buffer
    // returns TRUE if successful, FAIL if not

    unsigned r, i;
    int FAIL = 5; // arbitrary number
    
    // 0. check Write Protect

    
    // 1. send WRITE command

        // 2. send data
        
        // 3. send dummy CRC
        
        // 4. check if data accepted

            // 5. wait for write completion

    // 6. remember to disable the card and return TRUE/FALSE

} // writeSECTOR

// SD card connector presence detection switch (1 line of code)
int getCD(void){

}

// card Write Protect tab detection switch (1 line of code)
int getWP(void){

}

// The function below is used in the other .c file
void initData(void){
    int idx, b = 0;
    for (idx = 0; idx < B_SIZE; idx++) {
        data[idx] = b;
        b ^= 1;
    }
}
