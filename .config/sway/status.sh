while true
do
    date=$(date +'%A, %b %d')
    time=$(date +'%I:%M %p')
    weather=$(cat '/tmp/weather') 
    cputemp=$(cat /sys/devices/pci0000\:00/0000\:00\:18.3/hwmon/hwmon4/temp1_input | cut -c 1-2)

    echo " | $cputemp°C | $weather | $date | $time | "
    sleep 6

done 
