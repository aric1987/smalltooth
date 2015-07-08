# USB Framework: #

The USB Framework is an open source API provided by Microchip in order to allow us to work with the USB OTG module of the PIC providing some abstraction between diferent devices (PIC24F, dsPIC33 and PIC32) and on the USB protocol itself.

The USB layer then is an adaptation of the “USB Host - MCHPUSB - Generic Driver Demo” with just a few tweaks and changes. All the general information about the basic functionality can be found on the documentation (USB Embedded HostAN1143).

Before going into detail just say that a minimum understanding of the USB protocol is required. The "USB in a nutshell" manual covers all the required knowledge for now, can be found on the documentation.

According to the Bluetooth specification for the physical channel the USB implementation of the BT Host should support:
  * A control endpoint to issue all the HCI commands to the Bluetooth Controller.
  * An interrupt endpoint for the event reception.
  * Two bulk endpoints for the reception/transmit of asynchronous data.
  * Two isochronous endpoints for the reception/transmit of synchronous data.

We will need to implement the following endpoints:
  * Control: EP0\_OUT (address 0x00).
  * Event: EP1\_IN (address 0x81).
  * Data/ACL: EP2\_IN (address 0x82) and EP2\_OUT (address 0x02).
  * Synchronous: There will be no audio/synchronous data channels support on the stack so we can ignore the isochronous endpoints completely.

All the requirements mentioned above can be fulfilled with the event-based approach suported by the USB Framework. To ilustrate the basic idea behind it let's just take a look at the following example.

## USB event-based data transfer example: ##
Components:
  * Application: The software layer above the USB driver. For example the main application or any other BT stack layer.
  * USBHost: The Microchip USB Host stack running on the BT Host.
  * USBDevice: The device attached to the port, the BT Controller in this case.
  * USBDriver: Our adaptation of the "USB Host Generic Driver Demo". Called USBHostBluetooth in source.

Data transfer steps:
  1. The Application issues a read/write petition to the USBHost on a given endpoint (with an associated buffer).
  1. Once the USBDevice reads/writes data from/to that endpoint an interruption is generated on the USBHost stack.
  1. The USBHost generates a transfer event and forwards it to the USBDriver.
  1. After verifying the data, the USBDriver generates a transfer complete event and forwards it to the Application.

As we can see, all the internals of USB protocol are handled by the USBHost/USBDriver and controlled by the Application, this provides a simple USB API to support the actual Bluetooth stack.

## Documentation and downloads: ##
  * USB in a nutshell (a great summary of the USB specification): http://www.beyondlogic.org/usbnutshell/usb1.shtml
  * Microchip USB Framework 2.9: http://www.microchip.com/stellent/idcplg?IdcService=SS_GET_PAGE&nodeId=2896
  * USB Host Stack documentation: http://ww1.microchip.com/downloads/en/AppNotes/USB_Host_Stack_01140a.pdf
  * USB Embedded Host (Generic Client Driver documentation): http://ww1.microchip.com/downloads/en/AppNotes/01143a.pdf