#!/bin/bash
#prepare?

echo "PMMP INSTALL [PREPARE]"
echo "================="
echo "Installation on:"
echo "[1] Linux (Ubuntu, etc.)"
echo "[2] Termux (Android)"
echo "=================="
echo " Answers: (1/2)"
read installon
if [ $installon == 1 ]; then
bash <(curl https://raw.githubusercontent.com/Khuirul-Huda/pmmp-install/main/execute.sh)
echo "Selected [1] Linux"
echo "Run Apt Update? Y/N"
read answers
if [ $answers == y ]; then 

sudo apt update
sudo apt upgrade -y 
fi
elif [ $installon == 2 ]; then
  bash <(curl https://raw.githubusercontent.com/Khuirul-Huda/pmmp-install/main/termux.sh)
  echo "Selected [2] Termux"
  pkg update
  pkg upgrade
  pkg install curl
 
fi
echo "Installation Prepare End"