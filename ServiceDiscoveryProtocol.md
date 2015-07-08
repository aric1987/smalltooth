# Service Discovery Protocol layer. #

The Service Discovery Protocol layer is used to query and anounce the higher level services/protocols supported by the Bluetooth device. The specification covers the representation of that high level protocols/services as "service records" and splits the core functionality between a client and a server implementations that may work independently.

TODO: SDP drawing.

## SDP implementation: ##

The SDP implementation covered in this guide is just the server part of the protocol (the client part is completely ignored though it can be added with minimum design changes). The functionality then is just limited in waiting for Requests and providing Responses according to the service records on the system.

After the SDP initialisation call (done by the Bluetooth application) the layer simply waits for the reception of a data packet containing a valid SDP Request frame, then an answer is generated and sent to the Remote Device.
Service records:

A service record is a data representation of a high level functionality supported by a device. In our case it will be the RFCOMM (and maybe the HID in the future) protocol.

## Example of an RFCOMM service record: ##
<b>Handler:</b><br>
The service identifier, internal to our Local Device.<br>
A random unique number: (UUID32 bits) 0x00010001<br>
<br>
<b>Service class ID lists:</b><br>
Data element sequence of service classes that the service record conforms to.<br>
Serial port (UUID16 bits) 0x1101<br>

<b>Protocol descriptor lists:</b><br>
Data element sequence of protocol stacks that can be used to access the service described by the record.<br>
L2CAP Protocol descriptor: (UUID 16 bits) 0x0100<br>
RFCOMM Protocol descriptor: (UUID 16 bits) 0x0003 on the channel (UINT 8 bits) 0x04<br>

<b>Browse class ID lists:</b><br>
Data element sequence of browse groups the service record belongs to.<br>
Public browse class: (UUID 16 bits) 0x1002<br>

<b>Language Base ID Attribute List:</b><br>
A list of language bases that contains a language identifier, a character encoding indentifier and a base attribute ID for the languages used in the service record.<br>
Base attribute ID for the language in the Service Record: (UUID 16 bits) 0x0100<br>

<b>Service Name:</b><br>
String containing the name of the service specified in the service record.<br>

All that information must be stored on the system to be queried by the Remote Device using SDP Request commands.<br>
<br>
<h2>Data representation:</h2>

Check the Bluetooth specification for the complete explanation and some examples.