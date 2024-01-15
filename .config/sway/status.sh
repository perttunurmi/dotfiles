while true
do
    date=$(date +'%A, %b %d')
    time=$(date +'%I:%M %p')
    weather=$(cat '/tmp/weather') 

    echo " | $weather | $date | $time | "
    sleep 6

done 
