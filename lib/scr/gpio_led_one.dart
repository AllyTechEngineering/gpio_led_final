import 'package:dart_periphery/dart_periphery.dart';
import 'package:flutter/foundation.dart';
// How to use GPIOconfig
/*
GPIOconfig(direction, edge, bias, drive, inverted, label)

Check out the comments in gpio.dart starting at line number 54 for more details for the following:

direction = GPIOdirection.gpioDirIn,
edge = GPIOedge.gpioEdgeNone,
bias = GPIObias.gpioBiasDefault,
drive = GPIOdrive.gpioDriveDefault,
inverted = false,
label = '';
*/

/*
Here are the options for each position.

Hover over your live code for any of these options to get a little more info:

GPIOdirection.gpioDirIn 
GPIOdirection.gpioDirOut
GPIOdirection.gpioDirOutHigh
GPIOdirection.gpioDirOutLow

GPIOedge.gpioEdgeBoth
GPIOedge.gpioEdgeFalling
GPIOedge.gpioEdgeNone  
GPIOedge.gpioEdgeRising

GPIObias.gpioBiasDefault
GPIObias.gpioBiasDisable
GPIObias.gpioBiasPullDown
GPIObias.gpioBiasPullUp

GPIOdrive.gpioDriveDefault
GPIOdrive.gpioDriveOpenDrain
GPIOdrive.gpioDriveOpenSource

Example:
void initGpio16Output() {
    var config = GPIOconfig(GPIOdirection.gpioDirOut, GPIOedge.gpioEdgeNone,
        GPIObias.gpioBiasDefault, GPIOdrive.gpioDriveDefault, false, '16');
    gpio16 = GPIO.advanced(16, config);
  }
*/
class GpioLedOne {
  // ignore: prefer_typing_uninitialized_variables
  static var gpio16;

  void initGpio16Output() {
    gpio16 = GPIO(16, GPIOdirection.gpioDirOut);
  }

  void gpio16OutputLevel(bool outputValue) {
    debugPrint('outputValue: $outputValue');
    gpio16.write(outputValue);
  }

  void disposeGpio() {
    gpio16.dispose();
  }
}
