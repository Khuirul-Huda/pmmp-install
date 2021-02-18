#!/bin/bash



#tested on Ubuntu 18.04



#prepare?
echo "Run Apt Update? Y/N"
read answers
if [ $answers == y ]; then 


sudo apt update
sudo apt upgrade -y 
fi

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
echo "To Start Server -> ./start.sh"
echo "ThankYou"
