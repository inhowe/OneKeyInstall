echo "config raspberry"
sudo cp $(dirname $0)/config.txt /boot/firmware/config.txt

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
sudo modprobe fuse