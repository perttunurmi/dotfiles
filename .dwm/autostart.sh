picom --backend glx &
nm-applet &
keepassxc &
volumeicon &
flameshot &
echo 'auto' > '/sys/bus/usb/devices/1-10/power/control'
~/.fehbg &
# ~/workspaces/dotfiles/scripts/performance.sh

while true; do xsetroot -name "[$(powerprofilesctl get)] [$(cat /sys/class/power_supply/BAT0/capacity)%] [$(date +"%F")] [$(date +"%H:%M")] "; sleep 1s; done &
