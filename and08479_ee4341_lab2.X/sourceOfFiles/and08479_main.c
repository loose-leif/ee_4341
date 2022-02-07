/* ************************************************************************** */
/** x500_main.c

  @Description
    Main file.
 
 */
/* ************************************************************************** */

#include "io_setup.h"
#include "uart1_setup.h"
#include "stdio.h"


// delete later start

// header defines

#define CTRL_REG1       0x20
#define CTRL_REG2       0x21
#define CTRL_REG3       0x22
#define CTRL_REG4       0x23
#define CTRL_REG5       0x24
#define CTRL_REG6       0x25
#define REFERENCE       0x26
#define INT1_THS        0x32
#define INT1_DUR        0x33
#define INT1_CFG        0x34
#define FIFO_CTRL       0x2E

#define OUT_X_L         0x28
#define OUT_X_H         0x29
#define OUT_Y_L         0x2A
#define OUT_Y_H         0x2B
#define OUT_Z_L         0x2C
#define OUT_Z_H         0x2D

// The chip select pin being used for the accelerometer

#define ACCEL_CS              LATGbits.LATG9

// delete later end

void setup(void)
{
    io_setup();
    // include any other setup functions here
}

void delay(int ms)
{
    int i,j;
    
    for(i=0;i<ms;i++){
        
        for(j=0;j<9996;j++){
            
            asm("NOP");
            
        }
          
    }
}

void spi2_write_register(uint8_t address, uint8_t data)
{   
    uint16_t write_frame;
    uint16_t trash;
    
    write_frame = ((uint16_t)address << 8) | data;
            
    delay(1);

    // enable accelerometer chip select
    ACCEL_CS = 0;

    // send "write_frame" to the SPI2 buffer
    SPI2BUF = write_frame;
    
    // wait for the SPI2 buffer full bit  
    while(SPI2STATbits.SPIRBF == 0);
    
    // clear SPI2 buffer using the "trash" variable
    trash = SPI2BUF;

    // disable accelerometer chip select
    ACCEL_CS = 1;
    
}

int16_t spi2_read_register(uint8_t address)
{
    uint16_t read_frame;
    uint16_t value;
    
    read_frame = (((uint16_t)address|0x80) << 8) | 0x00;

    delay(1);

    // enable accelerometer chip select
    ACCEL_CS = 0;
    
    // send "read_frame to SPI2 buffer
    SPI2BUF = read_frame;
    
    // wait for the SPI2 buffer full bit  
    while(SPI2STATbits.SPIRBF == 0);
    
    // read the SPI2 buffer contents with the "value" variable                                      
    value = SPI2BUF;
    
    // disable accelerometer chip select
    ACCEL_CS = 1;
    
    return value;
}

void accel_setup(void)
{
    spi2_write_register(CTRL_REG1, 0x47);
    spi2_write_register(CTRL_REG2, 0x00);
    spi2_write_register(CTRL_REG3, 0x00);
    spi2_write_register(CTRL_REG4, 0x88);
    spi2_write_register(CTRL_REG5, 0x40);
    spi2_write_register(CTRL_REG6, 0x00);
    spi2_write_register(REFERENCE,  0x00);
    spi2_write_register(INT1_THS, 0x00);
    spi2_write_register(INT1_DUR, 0x00);
    spi2_write_register(INT1_CFG, 0x00);
    spi2_write_register(FIFO_CTRL, 0x80);
}

float accel_read_x(void)
{
   uint8_t X_H; 
   uint8_t X_L; 
   uint16_t X;
   
   X_H = spi2_read_register(OUT_X_H);
   X_L = spi2_read_register(OUT_X_L);
   
   // Combine data from both registers
   // See Lab2 manual for instructions
   
   X = (X_H << 8) | X_L;

   float value = X * 0.000061;            // Convert to units of g
   return value;
}

float accel_read_y(void)
{
   uint8_t Y_H; 
   uint8_t Y_L; 
   uint16_t Y;
   
   Y_H = spi2_read_register(OUT_Y_H);
   Y_L = spi2_read_register(OUT_Y_L);
   
   // Combine data from both registers
   // See Lab2 manual for instructions
   
   Y = (Y_H << 8) | Y_L;
   
   float value = Y * 0.000061;            // Convert to units of g
   return value;
}

float accel_read_z(void)
{
   uint8_t Z_H; 
   uint8_t Z_L; 
   uint16_t Z;
   
   Z_H = spi2_read_register(OUT_Z_H);
   Z_L = spi2_read_register(OUT_Z_L);
   
   // Combine data from both registers
   // See Lab2 manual for instructions
   
   Z = (Z_H << 8) | Z_L;
   
   float value = Z * 0.000061;            // Convert to units of g
   return value;
}

void spi2_setup(void)
{
    TRISGbits.TRISG6 = 0;	    // set serial clock as an output
    TRISGbits.TRISG9 = 0;	    // set Accelerometer Chip Select as an output
    
    // disable chip select "ACCEL_CS"
    ACCEL_CS = 1;
    
    // clear SPI2CON register
    SPI2CON = 0;
    SPI2CON2 = 0;
    
    // clear SPI2BUF register
    SPI2BUF = 0;
    
    // 39.06 kHz
    SPI2BRG = 511;   
               
    // clear overflow flag in SPI2STAT register
    SPI2STATbits.SPIROV = 0;
    
    // framed support off  
    SPI2CONbits.FRMEN = 0;
    
    // 16 bit communication
    SPI2CONbits.MODE16 = 1;
    SPI2CONbits.MODE32 = 0;
    
    // 1 = Idle state for clock is a high level; active state is a low level
    SPI2CONbits.CKP = 1;
    
    // 0 = Serial output data changes on transition from Idle clock state to active clock state (see CKP bit)
    SPI2CONbits.CKE = 0;

    // master mode
    SPI2CONbits.MSTEN = 1;

    // sample data at the end of clock time
    SPI2CONbits.SMP = 1;
    
    // enable SPI2 (ON)
    SPI2CONbits.ON = 1;

}

// - - - START TEST DEMO - - -

void test_accel(void)
{   
    putchar(' ');
    
    int16_t test = spi2_read_register(0x0F);  // read WHO_AM_I register
    
    if (test == 0x0033)
    {
        printf("Pass");
    }
    else
    {
        printf("Fail");
    }
}

// - - - END TEST DEMO - - -

int main(void)
{
    setup();
    uart1_setup();
    spi2_setup();
    delay(100);                  // 100 ms delay as precaution
    
    while(1)
    { 
        
        buttons();
        //test_accel();
        
    }

    return 0;
}


/* *****************************************************************************
 End of File
 */
