#!/bin/bash

echo "PMMP INSTALL"
echo "━━━━━━━━━━━━━━━━━━━"
echo "▣ Github: https://github.com/Khuirul-Huda/pmmp-install"
echo "▣ Note:"
echo "I'm not responsible for any damage or anything. Continue = agree"
echo "▣ This script will download some files from jenkins.pmmp.io "
echo " "
echo "━━━━━━━━━━━━━━━━━━━"
echo "Installation on:"
echo "[1] Linux (Ubuntu, etc.)"
echo "[2] Termux (Android)"
echo "More Coming soon..."
echo "━━━━━━━━━━━━━━━━━━━"
echo " Answers: (1/2)"
echo "Type other number to cancel"

read installon
if [ $installon == 1 ]; then
echo "Selected [1] Linux"
echo "Run Apt Update? Y/N"

read answers
if [ $answers == y ]; then 
sudo apt update
sudo apt upgrade -y 
fi
bash <(curl https://raw.githubusercontent.com/Khuirul-Huda/pmmp-install/main/execute.sh)
elif [ $installon == 2 ]; then
  echo "Selected [2] Termux"
  pkg update
  pkg upgrade
  pkg install curl -y
 bash <(curl https://raw.githubusercontent.com/Khuirul-Huda/pmmp-install/main/termux.sh)
fi
echo "Installation End"