import 'package:flutter/material.dart';
import 'package:gpio_led/scr/gpio_led_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Creating an instance of the class and assigning it to the variable.
  final GpioLedOne gpioLedOne = GpioLedOne();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('GPIO LED'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            getElevatedButtonLedOn(),
            const SizedBox(
              height: 20.0,
            ),
            getElevatedButtonLedOff(),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget getElevatedButtonLedOn() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          gpioLedOne.gpio16OutputLevel(true);
        });
      },
      child: const Text('GPIO16 High LED On'),
    );
  }

  Widget getElevatedButtonLedOff() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          gpioLedOne.gpio16OutputLevel(false);
        });
      },
      child: const Text('GPIO16 High LED Off'),
    );
  }
}
