picom --backend glx --no-vsync &
nm-applet &
keepassxc &
volumeicon &
flameshot &
redshift -l 62:25 &
xscreensaver &
echo 'auto' > '/sys/bus/usb/devices/1-10/power/control'
xmodmap -e "clear Lock" -e "keycode 0x42 = Escape"
~/.fehbg &
# ~/workspaces/dotfiles/scripts/performance.sh

while true; do xsetroot -name "[$(powerprofilesctl get)][$(date +"%F")][$(date +"%H:%M")]"; sleep 1s; done &
