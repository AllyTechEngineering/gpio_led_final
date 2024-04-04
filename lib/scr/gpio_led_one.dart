import 'package:dart_periphery/dart_periphery.dart';
import 'package:flutter/foundation.dart';

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
