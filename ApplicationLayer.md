# The Bluetooth application layer. #
The Bluetooth application will act as a hardware independent API that will allow the underlying OS to operate the stack.

The API has been kept to a minimal functional implementation, providing the next calls:
  * BTAPP\_Initialise: Populates the PhysicalBus control block and calls all the initialisation functions for the rest of the stack layers (HCI, L2CAP, SDP and protocol).
  * BTAPP\_Start: Initialises the PhysicalBus control block and issues the HCI RESET command (which will trigger the rest of the configuration process).
  * BTAPP\_InputData: Simple wrapper around the HCI data input function.
  * BTAPP\_InputEvent: Simple wrapper around the HCI event input function.

All the functionality of this API can as well be done in the main application (and part of it as well in the HCI PhysicalBus) but that will create dependencies between out hardware dependant and independent layers which is to be avoided for the sake of portability.

The implementation is really straightforward and can be easily understood just reading the code provided.