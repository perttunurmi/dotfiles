while true
do
    date=$(date +'%A, %b %d')
    time=$(date +'%H:%M %p')
    weather=$(cat '/tmp/weather') 
    battery=$(cat "/sys/class/power_supply/BAT0/capacity")
    status=$(cat "/sys/class/power_supply/BAT0/status")
    brightness=$(light -G)
    cputemp=$(cat "/sys/class/hwmon/hwmon9/temp2_input" | cut -c 1-2)

    echo "| CPU: $cputemp°C | ☀️$brightness% | BAT: $battery% $status | $weather | $date | $time | "
    sleep 6

done 
