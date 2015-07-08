# Host Controller Interface layer. #

The HCI is the layer that handles the BT Controller configuration, remote connections and data transfers.

The understanding of basic concepts involving the HCI layer will be assumed for the rest of this manual, please check the “Palowireless HCI tutorial” to get quickly introduced into the protocol.

For the complete specification and all the details check the Bluetooth Core v2.0 Specification “Volume 2 Core System Package, Part E Host Controller Interface Functional Specification”.

Some previous definitions:
  * Host: Both the USB Host and the BT Host (i.e. the PIC32 board).
  * Device: Both the USB Device and the BT Controller (i.e. the USB Bluetooth Dongle).
  * Remote Host: Another device (i.e. phone, PC...) that will establish connection with the Device being controller by the embedded Bluetooth stack we are developing.

## Data formats and packet examples: ##

All the information regarding the data formats can be found in the “Volume 2 Core System Package, Part E Host Controller Interface Functional Specification, 5 HCI Data Formats” and it's very well worth reading (except the 5.4.3 HCI Synchronous Data Packets part).

<b>Command packet example:</b><br>
Write local name = 0x13 0x0C 0x0B 0x50 0x49 0x43 0x33 0x32 0x5F 0x42 0x54 0x76 0x31 0x00<br>
<ul><li>OpCode = 0x13 0x0C = OCF | (OGF << 10) = 0x13 | (0x03<<10)<br>
</li><li>Parameter Total Length = 0x0B = 11<br>
</li><li>Parameters:<br>
</li></ul><ol><li>Local Name (NULL terminated string) = 0x50 0x49 0x43 0x33 0x32 0x5F 0x42 0x54 0x76 0x31 0x00 = “PIC32_BTv1\0”</li></ol>

<b>Notice:</b> This command specification can be found in “Volume 2 Core System Package, Part E Host Controller Interface Functional Specification, 7.3.11 Write Local Name Command”.<br>
<br>
<b>Event packet example:</b><br>
Command complete = 0x0E 0x04 0x01 0x13 0x0C 0x00<br>
<ul><li>EvtCode = 0x0E<br>
</li><li>Paramaters:<br>
</li></ul><ol><li>Number of HCI Command Packets = 0x01<br>
</li><li>Command OpCode = 0x13 0x0C = Write Local Name Command<br>
</li><li>Return = 0x00 = Success (Depends on the command)</li></ol>

<b>Notice:</b> This event specification can be found in “Volume 2 Core System Package, Part E Host Controller Interface Functional Specification, 7.7.14 Command Complete Event”.<br>
<br>
<b>Data packet example:</b><br>
ACL Data = 0x00 0x20 0x0C 0x00 0x08 0x00 0x01 0x00 0x02 0x01 0x04 0x00 0x01 0x00 0x43 0x00<br>
<ul><li>Connection handle = 0x00 0x20<br>
</li><li>Data length = 0x0C 0x00 = 12 (Remember that the data is in LittleEndian)<br>
</li><li>Data = 0x08 0x00 0x01 0x00 0x02 0x01 0x04 0x00 0x01 0x00 0x43</li></ul>

<b>Notice:</b> This is an L2CAP signaling frame. For now is out of scope.<br>
<br>
<h2>Commands and events:</h2>

All the information regarding commands and events can be found in the “Volume 2 Core System Package, Part E Host Controller Interface Functional Specification, 7 HCI Commands and Events”. I recommend to have the document at hand in order to follow the next example.<br>
<br>
<h2>HCI layer implementation:</h2>

The complete HCI layer has a huge amount of commands and events to handle all the possible scenarios (low power operation, scatternets, piconets, multiple links, data encryption...) which can be overwhelming and completely out of scope. Fortunately enough the 90% of that complexity can be ignored and still get a decent Bluetooth HCI implementation for a limited device (such as our PIC32).<br>
<br>
The most important limitations will be:<br>
<ul><li>Slave operation only.<br>
</li><li>Single connection oriented.<br>
</li><li>No data encryption.<br>
</li><li>Lack of support for low power operation.</li></ul>

Regardless of the limitations listed above the HCI implementation provided with this manual can be scaled up to 100% of compliance without changing the design in any way.<br>
<br>
Instead of provide a complete interface with all the commands and a complex state machine to work in all the possible scenarios, the implementation provided assumes a lot of aspects (like the protocol version of the Device or that the Remote Host will always be the master of the connection) and simplifies a lot more (like all the security/encryption parameters) making it much more accessible and educational without renouncing to scalability.<br>
<br>
The HCI layer implemented in this guide works as follows:<br>
<ul><li>Configures the Device in a very simple and generic way instead of providing an interface.<br>
</li><li>Accepts any remote connection and maintains it with just a minimal negotiation. Just supports one single ACL connection with a remote device.<br>
</li><li>Provides an interface for both the upper and lower layers to send and receive data.</li></ul>

Again, the sources provided can be easily changed to provide just a interface between the Bluetooth application and the Device.<br>
<br>
<h3>Initialization:</h3>

<b>Notice:</b> For more detail just check the function HCI_Init() in hci.c.<br>
<br>
The initialisation routine simply allocates the configuration and connection data of the HCI control block. Some of the values in the configuration block are populated with the device information:<br>
<ul><li>Local name.<br>
</li><li>PIN code.<br>
</li><li>ACL buffer size.<br>
</li><li>Number of ACL buffers.</li></ul>

<h3>Command assembly:</h3>

<b>Notice:</b> Check HCI_cmd() in hci.c.<br>
<br>
<h3>Event handler:</h3>

<b>Notice:</b> For more detail just check HCI_Event_Handler() in hci.c.<br>
<br>
<h3>HCI configuration:</h3>

<b>Notice:</b> For more detail just check the function HCI_CommandEnd() in hci.c.<br>
<br>
Here is where the specification of the HCI layer is completely ignored taking a very simple (and yet somehow reliable) way on handling the configuration of the Device. For a minimal implementation only few commands are needed during the configuration steps, all of them can be done in a given order and all of them generate a "Command complete Event". By knowing that the simplest approach is to issue a command and when completed issue the next one in the chain automatically.<br>
<br>
That's really it:<br>
RESET → WRITE HOST BUFFER SIZE → WRITE LOCAL NAME → WRITE CLASS OF DEVICE → WRITE SCAN ENABLE<br>
<br>
This is done by switching the command complete event first byte which contains the complete command code that will implicitly point the next command to issue of the above list.<br>
<br>
<h3>Data transfers:</h3>

All the data transfers are managed by the lower levels (USB host stack, main application and Bluetooth application) of the stack. The HCI layer just provides two API functions to handle data HCI_putData() and HCI_putEvent().<br>
<br>
<h3>HCI USB interface:</h3>

<b>Notice:</b> The data comes from the Host, meaning that the I/O are from the Host point of view (IN: Device → Host, OUT: Host → Device).<br>
<br>
Since the PhysicalBus for the HCI can be implemented with a wide range of protocols (I2C, SPI, UART, USB...) a protocol independent layer is needed between the it and the actual physical bus API.<br>
<br>
In this case the implementation is really trivial since its reduced to some definitions regarding the frame sizes and a couple of calls to the Microchip USB library. For more detail just check the sources included in this manual, it should be really easy to read and understand.<br>
<br>
<h2>HCI operation example:</h2>

This is an example of the working HCI layer implemented, the entire operation is divided in the 3 main parts of which the HCI layer has to take care of: Device setup, Remote Host connection and data exchange.<br>
<br>
The format is as follows:<br>
<br>
HCI {w|r} {CMD|EVT|ACL}: Notice that the CMD (commands) are always w (write, Host → Device) and the EVT (events) are always r (read, Device → Host) but the ACL (data) can be in both directions write (Host → Device → Remote Host) or read (Remote Host → Device → Host).<br>
<br>
<h3>Bluetooth Controller setup:</h3>

RESET<br>
<blockquote>HCI w CMD: 03 0C 00</blockquote>

COMMAND COMPLETE<br>
<blockquote>HCI r EVT: 0E 04 01 03 0C 00</blockquote>

WRITE HOST BUFF SIZE<br>
<blockquote>ACL frame len = 252bytes<br>
SCO frame len = 0bytes<br>
ACL frame buffers = 0 (Infinite)<br>
SCO frame buffers = 0 (Infinite)<br>
HCI w CMD: 33 0C 07 FC 00 00 00 00 00 00</blockquote>

COMMAND COMPLETE<br>
<blockquote>HCI r EVT: 0E 04 01 33 0C 00</blockquote>

WRITE LOCAL NAME<br>
<blockquote>Name = “PIC32_BTv1\0”<br>
HCI w CMD: 13 0C 0B 50 49 43 33 32 5F 42 54 76 31 00</blockquote>

COMMAND COMPLETE<br>
<blockquote>HCI r EVT: 0E 04 01 13 0C 00</blockquote>

WRITE CLASS OF DEVICE<br>
<blockquote>Major class = Computer<br>
Minor class = Desktop<br>
HCI w CMD: 24 0C 03 04 01 18</blockquote>

COMMAND COMPLETE<br>
<blockquote>HCI r EVT: 0E 04 01 24 0C 00</blockquote>

WRITE SCAN ENABLE<br>
<blockquote>Inquiry scan = Enable<br>
Page scan = Enable<br>
HCI w CMD: 1A 0C 01 03</blockquote>

COMMAND COMPLETE<br>
<blockquote>HCI r EVT: 0E 04 01 1A 0C 00</blockquote>

<h3>Connection accept:</h3>

CONNECTION REQUEST<br>
<blockquote>BD ADDR = 00:22:F7:17:06:C5<br>
Class of Device = Computer, Laptop<br>
Link type = 0x01 (ACL)<br>
HCI r EVT: 04 0A C5 06 17 F7 22 00 0C 01 1C 01</blockquote>

CONNECTION ACCEPT<br>
<blockquote>BD ADDR = 00:22:F7:17:06:C5<br>
Role = 0x01 (Remain slave)<br>
HCI w CMD: 09 04 07 C5 06 17 F7 22 00 01</blockquote>

COMMAND STATUS<br>
<blockquote>Status = Pending<br>
Number of HCI command packets = 0x01<br>
Command OpCode = 0x09 0x04<br>
HCI r EVT: 0F 04 00 01 09 04</blockquote>

CONNECTION COMPLETE<br>
<blockquote>Status = Connection successfully completed<br>
Connection handle = 0x00 0x00<br>
BD ADDR = 00:22:F7:17:06:C5<br>
Link type = 0x01 (ACL)<br>
Encryption mode = 0x00 (Encryption not required)<br>
HCI r EVT: 03 0B 00 00 00 C5 06 17 F7 22 00 01 00</blockquote>

MAX SLOTS CHANGE<br>
<blockquote>Connection handle = 0x00 0x00<br>
LMP maximum slots = 0x05<br>
HCI r EVT: 1B 03 00 00 05</blockquote>

<h3>Data exchange:</h3>

READ ACL DATA PACKET<br>
<blockquote>HCI r ACL: 00 20 0C 00 08 00 01 00 02 01 04 00 01 00 43 00