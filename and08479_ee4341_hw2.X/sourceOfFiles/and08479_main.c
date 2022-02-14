/* ************************************************************************** */
/** x500_main.c

  @Description
    Main file.
 
 */
/* ************************************************************************** */

//#include "io_setup.h"
//#include "uart1_setup.h"
//#include "stdio.h"


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

// delete later end

volatile int a,b,c = 0;

int power(int basee, int n){
    
    int i,p;
    
    p=1;
    for(i = 0; i<=n; ++i){
        
        p= p*basee;
        
    }
    
    return p;
    
    
}

int powerr(int basee, int n){
    
    int p;
    
    if(n>1)
        p=basee*powerr(basee,n-1);
    else
        p=basee;
    
    return p;
    
}

int main(void)
{
    
    a = power(2,5);
    b = powerr(2,5);
    
    c = a + b;
    
    return 0;
    
}

//volatile char circBuff[64] = {};
//volatile int front = 0;
//
//void setup(void)
//{
//    io_setup();
//    // include any other setup functions here
//}
//
//void delay(int ms)
//{
//    int i,j;
//    
//    for(i=0;i<ms;i++){
//        
//        for(j=0;j<9996;j++){
//            
//            asm("NOP");
//            
//        }
//          
//    }
//}
//
//void spi2_write_register(uint8_t address, uint8_t data)
//{   
//    uint16_t write_frame;
//    uint16_t trash;
//    
//    write_frame = ((uint16_t)address << 8) | data;
//            
//    delay(1);
//
//    // enable accelerometer chip select
//    ACCEL_CS = 0;
//
//    // send "write_frame" to the SPI2 buffer
//    SPI2BUF = write_frame;
//    
//    // wait for the SPI2 buffer full bit  
//    while(SPI2STATbits.SPIRBF == 0);
//    
//    // clear SPI2 buffer using the "trash" variable
//    trash = SPI2BUF;
//
//    // disable accelerometer chip select
//    ACCEL_CS = 1;
//    
//}
//
//int16_t spi2_read_register(uint8_t address)
//{
//    uint16_t read_frame;
//    uint16_t value;
//    
//    read_frame = (((uint16_t)address|0x80) << 8) | 0x00;
//
//    delay(1);
//
//    // enable accelerometer chip select
//    ACCEL_CS = 0;
//    
//    // send "read_frame to SPI2 buffer
//    SPI2BUF = read_frame;
//    
//    // wait for the SPI2 buffer full bit  
//    while(SPI2STATbits.SPIRBF == 0);
//    
//    // read the SPI2 buffer contents with the "value" variable                                      
//    value = SPI2BUF;
//    
//    // disable accelerometer chip select
//    ACCEL_CS = 1;
//    
//    return value;
//}
//
//void accel_setup(void)
//{
//    spi2_write_register(CTRL_REG1, 0x47);
//    spi2_write_register(CTRL_REG2, 0x00);
//    spi2_write_register(CTRL_REG3, 0x00);
//    spi2_write_register(CTRL_REG4, 0x88);
//    spi2_write_register(CTRL_REG5, 0x40);
//    spi2_write_register(CTRL_REG6, 0x00);
//    spi2_write_register(REFERENCE,  0x00);
//    spi2_write_register(INT1_THS, 0x00);
//    spi2_write_register(INT1_DUR, 0x00);
//    spi2_write_register(INT1_CFG, 0x00);
//    spi2_write_register(FIFO_CTRL, 0x80);
//}
//
//float accel_read_x(void)
//{
//   uint8_t X_H; 
//   uint8_t X_L; 
//   uint16_t X;
//   
//   X_H = spi2_read_register(OUT_X_H);
//   X_L = spi2_read_register(OUT_X_L);
//   
//   // Combine data from both registers
//   // See Lab2 manual for instructions
//   
//   X = (X_H << 8) | X_L;
//
//   float value = X * 0.000061;            // Convert to units of g
//   return value;
//}
//
//float accel_read_y(void)
//{
//   uint8_t Y_H; 
//   uint8_t Y_L; 
//   uint16_t Y;
//   
//   Y_H = spi2_read_register(OUT_Y_H);
//   Y_L = spi2_read_register(OUT_Y_L);
//   
//   // Combine data from both registers
//   // See Lab2 manual for instructions
//   
//   Y = (Y_H << 8) | Y_L;
//   
//   float value = Y * 0.000061;            // Convert to units of g
//   return value;
//}
//
//float accel_read_z(void)
//{
//   uint8_t Z_H; 
//   uint8_t Z_L; 
//   uint16_t Z;
//   
//   Z_H = spi2_read_register(OUT_Z_H);
//   Z_L = spi2_read_register(OUT_Z_L);
//   
//   // Combine data from both registers
//   // See Lab2 manual for instructions
//   
//   Z = (Z_H << 8) | Z_L;
//   
//   float value = Z * 0.000061;            // Convert to units of g
//   return value;
//}
//
//void spi2_setup(void)
//{
//    TRISGbits.TRISG6 = 0;	    // set serial clock as an output
//    TRISGbits.TRISG9 = 0;	    // set Accelerometer Chip Select as an output
//    
//    // disable chip select "ACCEL_CS"
//    ACCEL_CS = 1;
//    
//    // clear SPI2CON register
//    SPI2CON = 0;
//    SPI2CON2 = 0;
//    
//    // clear SPI2BUF register
//    SPI2BUF = 0;
//    
//    // 39.06 kHz
//    SPI2BRG = 511;   
//               
//    // clear overflow flag in SPI2STAT register
//    SPI2STATbits.SPIROV = 0;
//    
//    // framed support off  
//    SPI2CONbits.FRMEN = 0;
//    
//    // 16 bit communication
//    SPI2CONbits.MODE16 = 1;
//    SPI2CONbits.MODE32 = 0;
//    
//    // 1 = Idle state for clock is a high level; active state is a low level
//    SPI2CONbits.CKP = 1;
//    
//    // 0 = Serial output data changes on transition from Idle clock state to active clock state (see CKP bit)
//    SPI2CONbits.CKE = 0;
//
//    // master mode
//    SPI2CONbits.MSTEN = 1;
//
//    // sample data at the end of clock time
//    SPI2CONbits.SMP = 1;
//    
//    // enable SPI2 (ON)
//    SPI2CONbits.ON = 1;
//
//   // DELETE LATER
//            
//    return;
//    
//    
//}
//
////void __ISR(_SPI_2_VECTOR, ip14)__SPI2Interrupt(void){
////    
////    IFS1bits.SPI2EIF = 0;
////    IFS1bits.SPI2RXIF = 0;
////    IFS1bits.SPI2TXIF = 0;
////    
////    circBuff[front] = SPI2BUF;
////    front++;
////    if(front==64){
////        
////        front = 0;
////        
////    }
////    
////    return;
////}
//
//// - - - START TEST DEMO - - -
//
//void test_accel(void)
//{   
//    putchar(' ');
//    
//    int16_t test = spi2_read_register(0x0F);  // read WHO_AM_I register
//    
//    if (test == 0x0033)
//    {
//        printf("Pass");
//    }
//    else
//    {
//        printf("Fail");
//    }
//}
//
//void accel_print_data(char axis)
//{
//    float data;
//    
//    if (axis == 'x')
//    {
//        data = accel_read_x();
//    }
//    else if (axis == 'y')
//    {
//        data = accel_read_y();
//    }
//    else if (axis == 'z')
//    {
//        data = accel_read_x();
//    }
//    
//    char buffer[50]; 
//    sprintf(buffer, "%f", data); 
//    printf("%s \n", buffer);
//}
//
//void accel_move_cursor(void)
//{
//    if (accel_read_x() > 0.4)
//    {
//        putchar(' ');
//    }
//    else if (accel_read_x() < -0.4)
//    {
//        putchar(0x8);
//    }
//    
//}
//
//void button_on(int x)
//{
//    if (x == 1)
//    {
//        LED1 = 1;
//	// whatever else you want to do if button 1 is pressed
//    }
//    else if (x == 2)
//    {
//        LED2 = 1;
//    }
//    else if (x == 3)
//    {
//        LED3 = 1;
//    }
//}
//
//void button_off(int x)
//{
//    if (x == 1)
//    {
//        LED1 = 0;
//    }
//    else if (x == 2)
//    {
//        LED2 = 0;
//    }
//    else if (x == 3)
//    {
//        LED3 = 0;
//    }
//}
//
//void buttons(void)
//{
//    // Include code for debouncing every time a button is pressed
//    // BUTTONs are pulled-up, so poll for low state
//    // With De-bounce
//    
//    if (!BUTTON1)
//    {
//        
//        delay(30);
//        if(!BUTTON1){ button_on(1); 
//        printf("X Axis:\t");
//        accel_print_data('x');
//        
//    }
//        
//    }
//    else
//    {
//        button_off(1);
//    }
//    
//    if (!BUTTON2)
//    {
//        
//        delay(30);
//        if(!BUTTON2){ 
//            
//            button_on(2); 
//            printf("Y Axis:\t"); 
//            accel_print_data('y');
//            
//        }
//        
//    }
//    else
//    {
//        button_off(2);
//    }
//    
//    if (!BUTTON3)
//    {
//        
//        delay(30);
//        if(!BUTTON3){ button_on(3); puts("\033[3B"); }
//        
//    }
//    else
//    {
//        button_off(3);
//    } 
//}



// - - - END TEST DEMO - - -

//int main(void)
//{
//    setup();
//    uart1_setup();
//    spi2_setup();
//    delay(100);                  // 100 ms delay as precaution
//    
//    while(1)
//    { 
//        
//        buttons();
//        //test_accel();
//        
//    }
//
//    return 0;
//}


/* *****************************************************************************
 End of File
 */
