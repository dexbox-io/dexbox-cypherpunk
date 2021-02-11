#!/bin/bash




How do I enable right click?
You can emulate a right click with a setting change. Just:

sudo nano /etc/X11/xorg.conf
Paste in:

Section "InputClass"
   Identifier "calibration"
   Driver "evdev"
   MatchProduct "FT5406 memory based driver"

   Option "EmulateThirdButton" "1"
   Option "EmulateThirdButtonTimeout" "750"
   Option "EmulateThirdButtonMoveThreshold" "30"
EndSection
Hit CTRL+X and y to save. Then:

sudo reboot
Once enabled, right click works by pressing and holding the touchscreen and will be activated after a short delay.

How do I get an on-screen keyboard?
Florence Virtual Keyboard
Install with:

sudo apt install florence
Matchbox Virtual Keyboard
Install like so:

sudo apt install matchbox-keyboard
And then find in Accessories > Keyboard.