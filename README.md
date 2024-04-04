# gpio_led
1. Download the entire project to your Rasperry Pi Model 4B with 4G or more of ram.
2. You cannot debug in VS Code with 4G of ram. You can debug on a Pi with 8G of ram.
3. I have not tested on Raspberry Pi Model 4B with lower ram.
## How To Run on Raspberry Pi
1. Must have Flutter installed on the Pi.
2. Nice to have: install VS code and Flutter Extensions.
3. Run Flutter Docter -v for a clean bill of health.
4. Ignore Android Studio and Chrome issues.
5. In a terminal window: sudo apt-get install libgtk-3-0 libblkid1 liblzma5 
6. In the Flutter project root folder in a terminal window run: flutter build linux --release
7. Naviagte to your dart file. Your folder structure will be different so change accordingly.
8. /home/allytech/Documents/FlutterEmbeddedEssentials/gpio_led_final/build/linux/arm64/release/bundle/gpio_led
9. change permissions: chmod +rwx gpio_led
10. Now you can run the file using ./gpio_led