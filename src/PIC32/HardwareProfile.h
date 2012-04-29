// HardwareProfile.h

#ifndef _HARDWAREPROFILE_H_
#define _HARDWAREPROFILE_H_

#include <p32xxxx.h>
#include <plib.h>


// Clock Definitions
#ifndef SYS_CLOCK
    #error "Define SYS_CLOCK (ex. -DSYS_CLOCK=80000000) on compiler command line"
#endif
#define GetSystemClock()            SYS_CLOCK
#define GetPeripheralClock()        SYS_CLOCK
#define GetInstructionClock()       GetSystemClock()


#define DEMO_TIMEOUT_LIMIT  0xF000


/** TRIS ***********************************************************/
#define INPUT_PIN           1
#define OUTPUT_PIN          0

#define tris_usb_bus_sense  TRISBbits.TRISB5    // Input
#define USB_BUS_SENSE       1
#define tris_self_power     TRISAbits.TRISA2    // Input
#define self_power          1


/** LED ************************************************************/
// LED Macros
#define mSetAllLedsON()			(mSetRedLedON(), mSetYellowLedON(), mSetGreenLedON())
#define mSetAllLedsOFF()		(mSetRedLedOFF(), mSetYellowLedOFF(), mSetGreenLedOFF())
#define mSetAllLedsINV()		(mSetRedLedINV(), mSetYellowLedINV(), mSetGreenLedINV())

#define mSetRedLedON()			mPORTDSetBits(BIT_0)
#define mSetRedLedOFF()			mPORTDClearBits(BIT_0)
#define mSetRedLedINV()			mPORTDToggleBits(BIT_0)

#define mSetYellowLedON()		mPORTDSetBits(BIT_1)
#define mSetYellowLedOFF()		mPORTDClearBits(BIT_1)
#define mSetYellowLedINV()		mPORTDToggleBits(BIT_1)

#define mSetGreenLedON()		mPORTDSetBits(BIT_2)
#define mSetGreenLedOFF()		mPORTDClearBits(BIT_2)
#define mSetGreenLedINV()		mPORTDToggleBits(BIT_2)

/** SWITCH *********************************************************/
#define mInitAllSwitches()  mPORTDSetPinsDigitalIn(BIT_6|BIT_7)
#define mInitSwitch3()      mPORTDSetPinsDigitalIn(BIT_7)
#define mInitSwitch6()      mPORTDSetPinsDigitalIn(BIT_6)
#define sw3                 mPORTDReadBits(BIT_6)
#define sw6                 mPORTDReadBits(BIT_7)

#define sw3_bit             BIT_6
#define sw3_port            PORTD
#define sw6_bit             BIT_7
#define sw6_port            PORTD


/** LCD ************************************************************/
// No LCD on PIC32 Starter Kits
#define LCDInit()
#define LCDWriteLine(n,s)

// IOPORT bit masks can be found in ports.h
#define CONFIG          (CN_ON)
#define PINS            (CN16_ENABLE)
#define PULLUPS         (CN15_PULLUP_ENABLE | CN16_PULLUP_ENABLE)
#define INTERRUPT       (CHANGE_INT_ON | CHANGE_INT_PRI_2)

/** Serial IO ******************************************************/
#ifdef __DEBUG
    #define SIOInit()           DBINIT()
    #define SIOPrintString      DBPRINTF
    #define SIOPutDec(d)	DBPRINTF("%d", (d))
    #define SIOPutHex(h)	DBPRINTF("%02X", (h))
    #define SIOPutChar(c)       DBPRINTF("%c", (c))
#else
    #define SIOInit()                
    #define SIOPrintString(s, ...)   DelayMs(5)
    #define SIOPutDec(d)             
    #define SIOPutHex(h)             
    #define SIOPutChar(c)            
#endif


#endif  // _HARDWAREPROFILE_H_

