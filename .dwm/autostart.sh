picom -r 0 -o 0 -b 
nm-applet &
keepassxc &
echo 'auto' > '/sys/bus/usb/devices/1-10/power/control'
~/.fehbg &

while true; do xsetroot -name "$(cat /sys/class/power_supply/BAT0/capacity)% $( date +"%F %R" )"; sleep 1m; done &
