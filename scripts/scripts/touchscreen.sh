# Only run once
# Made for T480s, to make work with your display change idVendor and idProcuct in DISABLE_TEXT 
# To revert just remove /etc/udev/rules.d/80-touchscreen.rules
# running echo 'auto' > '/sys/bus/usb/devices/1-10/power/control' as root might also save battery! (autosuspend) but this resets on reboot

DISABLE_TEXT="SUBSYSTEM=="usb", ATTRS{idVendor}=="04f3", ATTRS{idProduct}=="2398", ATTR{authorized}="0""

echo $DISABLE_TEXT | sudo tee -a /etc/udev/rules.d/80-touchscreen.rules
sudo udevadm control --reload-rules && sudo udevadm trigger

echo "Touch screen disabled!"
