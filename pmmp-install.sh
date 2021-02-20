#!/bin/bash
#prepare?
echo "Run Apt Update? Y/N"
read answers
if [ $answers == y ]; then 

sudo apt update
sudo apt upgrade -y 
fi

bash <(curl https://raw.githubusercontent.com/Khuirul-Huda/pmmp-install/main/execute.sh)
