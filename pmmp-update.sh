#!/bin/bash
#First stop your server then go  to your server's folder
#actually this is for my personal uses only

SECONDS=0

rm PocketMine-MP.phar
rm ./start.sh
wget "https://jenkins.pmmp.io/job/PocketMine-MP/1828/artifact/PocketMine-MP.phar"
wget "https://jenkins.pmmp.io/job/PocketMine-MP/1828/artifact/start.sh"
chmod +x ./start.sh

if (( $SECONDS > 3600 )) ; then
    let "hours=SECONDS/3600"
    let "minutes=(SECONDS%3600)/60"
    let "seconds=(SECONDS%3600)%60"
    echo "Installation completed in $hours hour(s), $minutes minute(s) and $seconds second(s)" 
elif (( $SECONDS > 60 )) ; then
    let "minutes=(SECONDS%3600)/60"
    let "seconds=(SECONDS%3600)%60"
    echo "Installation completed in $minutes minute(s) and $seconds second(s)"
else
    echo "Installation completed in $SECONDS seconds"
fi
echo "Do you want to start server now? [Y/N]"
read start
if [ $start == y ]; then
./start.sh
else
echo "Start Server > ./start.sh"
fi