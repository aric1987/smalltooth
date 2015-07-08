# SmallTooth Bluetooth Stack: #

Is an open source Bluetooth stack coded from scratch with an embedded device in mind. It was initially thought to be part of a Bluetooth tutorial that I was writing on my web (www.guillem.co.uk) so the code is really readable and easy to follow.

Working straight out of the box with any PIC32 with USB OTG and a generic USB Bluetooth dongle.

SmallTooth features:
  * Working on PIC32 USB Starter Kit II and Ethernet Starter Kit.
  * Immediate to adapt for other PIC32, PIC24 and dsPIC33 devices.
  * Very small, compact and simple code base.

Limitations:
  * Minimal server side implementation of the HCI, L2CAP, SDP and RFCOMM layers.
  * Server side implementation of the SPP. Tested with Windows, Linux and Android.

During the next few weeks I will keep documenting the project and improving it, my current goal is tho make a user mode usblib and run the entire stack on a Windows/Linux machine and not just on embedded devices.



