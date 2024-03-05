echo "config raspberry"

echo "Do you want to map uart console to GPIO14/15?[Y/n]"
read answer
case $answer in
(Y | y)
	sudo cp $(dirname $0)/config.txt /boot/firmware/config.txt
	;;
(N | n)
	echo "skip uart map"
	;;
(*)
	sudo cp $(dirname $0)/config.txt /boot/firmware/config.txt
	;;
esac

echo "Install command"
sudo apt-get install -y vim
sudo apt-get install -y git
sudo apt-get install -y build-essential
sudo apt-get install -y cmake
sudo apt-get install -y tmux
sudo apt-get install -y ag
sudo apt-get install -y fzf
sudo apt-get install -y shellcheck
sudo apt-get install -y glances
sudo apt-get install -y bat
sudo apt-get install -y tig
sudo apt-get install -y ntfs-3g
sudo apt-get install -y exfat-fuse
sudo apt-get install -y lrzsz
sudo apt-get install -y iotop
sudo apt-get install -y ack
sudo apt-get install -y iftop
sudo apt-get install -y exa
sudo apt-get install -y duf
sudo apt-get install -y python3-pip
sudo apt-get install -y pipx
sudo modprobe fuse