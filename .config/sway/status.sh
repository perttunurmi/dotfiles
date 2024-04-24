while true
do
    date=$(date +'%A, %b %d')
    time=$(date +'%I:%M %p')
    weather=$(cat '/tmp/weather') 
    battery=$(cat "/sys/class/power_supply/BAT0/capacity")
    brightness=$(light -G)

    echo "| ☀️$brightness | BAT:$battery% | $weather | $date | $time | "
    sleep 6

done 
