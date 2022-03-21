/*
** SDMMC.h SD card interface
*/
#define FAIL FALSE
// Init ERROR code definitions
#define E_COMMAND_ACK 0x80
#define E_INIT_TIMEOUT 0x81
#define B_SIZE 512 // data block size

char data[B_SIZE];
char buffer[B_SIZE];

typedef unsigned LBA; // logic block address, 32 bit wide

void initSD(void); // initializes I/O pins and SPI

unsigned char writeSPI(unsigned char);

int sendSDCmd(unsigned char, unsigned, unsigned);

int initMedia(void); // initializes the SD/MMC memory device

int readSECTOR ( LBA, char *); // reads a block of data

int writeSECTOR( LBA, char *); // writes a block of data

int getCD(void); // check card presence
int getWP(void); // check write protection tab

void initData(void);