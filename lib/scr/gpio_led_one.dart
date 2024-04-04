import 'package:dart_periphery/dart_periphery.dart';
import 'package:flutter/foundation.dart';

/*
direction = GPIOdirection.gpioDirIn,
edge = GPIOedge.gpioEdgeNone,
bias = GPIObias.gpioBiasDefault,
drive = GPIOdrive.gpioDriveDefault,
inverted = false,
label = '';
*/
class GpioLedOne {
  var config = GPIOconfig.defaultValues();
  var gpio16 = GPIO(16, GPIOdirection.gpioDirOut);

  void gpio16OutputLevel(bool outputValue) {
    debugPrint('outputValue: $outputValue');
    gpio16.write(outputValue);
  }

  void disposeGpio() {
    gpio16.dispose();
  }
}
