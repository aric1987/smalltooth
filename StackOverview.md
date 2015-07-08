# Bluetooth stack overview and design considerations. #

The stack has been designed with full Bluetooth compliance in mind, even though just a minimal functionality will be implemented in order to make the whole code much more lightweight and extendible. Our main objective then will be to make the PIC32 microcontroller capable of exchanging small amounts of information with any other Bluetooth device such a mobile phone or a laptop.

## Overview of a Bluetooth device: ##
> TODO: A drawing of a Bluetooth host + chipset + antenna.

The Bluetooth protocol stack is usually implemented in two main parts:
  1. Bluetooth Controller: Handles all the radio-link and base band communication. It is the radio controller which means that is implemented and shipped with the Bluetooth chipset.
  1. Bluetooth Host: Runs the upper layers Bluetooth stack (the non-hardware dependant ones). Typically is implemented with a software stack running on a general purpose CPU that handles all the user data and protocol logic.
In our case the BT Controller will be the USB-BT Dongle and the BT Host the PIC32. The physical communication between both parts will be over USB.

## Overview of the Bluetooth Host stack: ##
This guide is about programming a Bluetooth host stack, which is layered according the OSI model:

Bluetooth stack (OSI EQUIVALENT):
  * Application (Point to Point Protocol)
  * SPP, RFCOMM and SDP (Logic Link Control)
  * L2CAP and HCI (Medium Access Control)
  * USB (Physical)

With that model in mind lets take a look at each of the components to implement and its features:

  * Application: Network layer that implements a PPP (Point to Point Protocol). Provides an abstraction of the underlying functionalities such as the device configuration as well as data exchange interfaces.
  * SPP/RFCOMM: Part of the LLC (Logic Link Control) layer in the OSI model that emulates an RS232/serial channel.
  * SDP: Part of the LLC that announces and specifies all the other upper layer features (like the RFCOMM channels or port names).
  * L2CAP: Part of the OSI MAC (Medium Access Control) layer that manages all the logical data channels of all the upper layers.
  * HCI: Part of the MAC. Provides an interface between the Bluetooth Host and the Bluetooth Controller.
  * Physical bus: (Supplied by Microchip) Framework to control the USB module of the PIC32.

Further reading:
  1. Architecture overview: https://www.bluetooth.org/Building/HowTechnologyWorks/Architecture/Overview.htm
  1. Bluetooth specification document: https://www.bluetooth.org/Technical/Specifications/adopted.htm