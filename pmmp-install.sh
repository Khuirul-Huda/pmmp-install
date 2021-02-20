#!/bin/bash

#prepare?
echo "Run Apt Update? Y/N"
read answers
if [ $answers == y ]; then 


sudo apt update
sudo apt upgrade -y 
fi
SECONDS = 0
sudo apt install tar
#start pmmp install

wget "https://jenkins.pmmp.io/job/PHP-7.4-Linux-x86_64/9/artifact/PHP_Linux-x86_64.tar.gz"
tar -xvf "PHP_Linux-x86_64.tar.gz"
rm "PHP_Linux-x86_64.tar.gz"
wget "https://jenkins.pmmp.io/job/PocketMine-MP/1828/artifact/PocketMine-MP.phar"
wget "https://jenkins.pmmp.io/job/PocketMine-MP/1828/artifact/start.sh"
sudo chmod +x ./start.sh
#start the server for first time
echo "Start Server Now? [Y/N]"
read start
if [ $start == y ]; then

./start.sh
fi
echo "To Start Server, Type ./start.sh"
echo "dont forget to use screen so the server will always on!"
echo "ThankYou"


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