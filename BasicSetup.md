# Basic set up: #

## Hardware used: ##

  * The base platform will be a PIC32 USB Starter Kit II although the code will be really generic and highly portable to other embedded or desktop systems.

Overview of the board (quoting Microchip):
  * PIC32 running at 80 MHz with 512K Flash, 128K RAM, 8 ch. DMA + 4 ch. DMA dedicated to USB and CAN
  * USB powered board
  * USB connectors, user switches, and LEDs

For the Bluetooth part I will use a generic Chinese BT USB dongle (I’ve got 3 of those and all of them got the same physical address...) and a Conceptronic BT2 Nano.

<b>Notice</b>: Information and resources regarding the PIC32 USB Starter Kit II can be found on the Microchip website: http://www.microchip.com/stellent/idcplg?IdcService=SS_GET_PAGE&nodeId=2615&dDocName=en535536

## Software used: ##

Windows set up:
  * Host OS: Windows 7 64 bit.
  * Development IDE: MPLAB Starter Kit IDE (v8.41, supplied with the PIC32 USB Starter Kit II) and MPLAB X 7.12 Beta.
  * Host Bluetooth stack: Microsoft Bluetooth stack (included in Windows 7).
  * Host protocol sniffer: Sysnucleus USBTrace (trial version).

<b>Notice</b>: Its not a problem to work with the 14 day trial version of the Sysnucleus USBTrace, just capture all the data you need and export it as a csv and open it with a parser (like any spread sheet editor) to work with it. In case you need to work for an extended time with the stack then consider buying it because it's a really good tool.

Linux set up:
  * Host OS: Ubuntu 12.04 LTS 64 bit
  * Development IDE: MPLAB X 1.10
  * Host Bluetooth stack: Bluez
  * Host protocol sniffer: Bluez HCIdump

## Quick set up: ##
TODO