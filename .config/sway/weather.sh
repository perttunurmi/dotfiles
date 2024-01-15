#! /bin/bash
while true
do
    # Get output silently, remove unwanted lines, reformat, output to temp file
    curl wttr.in/Jyväskylä?format="%l:%c+%t\n" > /tmp/weather
    sleep 900
done
