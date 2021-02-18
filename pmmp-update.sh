#First stop your server then move to your server's folder

rm PocketMine-MP.phar
rm ./start.sh
wget "https://jenkins.pmmp.io/job/PocketMine-MP/1828/artifact/PocketMine-MP.phar"
wget "https://jenkins.pmmp.io/job/PocketMine-MP/1828/artifact/start.sh"

#you're ✅ done