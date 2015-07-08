# Introduction #
This guide is intended to provide all the knowledge needed in order to build from scratch an entire Bluetooth stack for an embedded device. We will go step-by-step into the tailoring of a "simple" and "easy" to understand generic Bluetooth v2.0 software stack.

Having said that, please be aware that this is about low level Bluetooth programming not about the protocol specification itself. This means that we won’t study the Bluetooth protocol specification, instead we will focus on the design and implementation form a very practical approach.

## About the licensing: ##
Both the code and documentation are subject to the Apache 2.0 license.

## Previous knowledge needed: ##
  * Basic understanding of the USB protocol.
  * Basic to intermediate knowledge of the Bluetooth protocol.
  * Intermediate to advanced C knowledge (feeling confortable with pointer aritmethics, dynamic memory management, callbacks and other non-java "features" is a must).

## Hardware/Software needed to follow the guide: ##
  * HW: PIC32 USB Starter Kit II, Note1
  * HW: Generic USB-Bluetooth Dongle, at least v2.0
  * SW: MPLAB X, Note2

<b>Note1</b>: The BT Stack is also compatible with the PIC24F series (and obviously with any other PIC32 with USB Host support). <br>
<b>Note2</b>: It must work as well with MPLAB v8 even though the project files are not supplied with this guide.<br>
<br>
<h2>Resources:</h2>
TODO: FILL THE RESOURCE LIST