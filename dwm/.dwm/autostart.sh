picom --backend glx &
nm-applet &
keepassxc &
volumeicon &
flameshot &
redshift-gtk &
copyq &
xscreensaver &
echo 'auto' > '/sys/bus/usb/devices/1-10/power/control'
# ~/.fehbg &

# while true; do xsetroot -name "[$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')%][$(cat /sys/class/power_supply/BAT0/capacity)%][$(date +"%d-%m-%Y")][$(date +"%H:%M")]"; sleep 1s; done &
