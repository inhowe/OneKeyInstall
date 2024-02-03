sudo apt-get install -y ntfs-3g
sudo modprobe fuse

sudo mkdir -p ~/HDD
sudo mkdir -p ~/SSD

sudo cp /etc/fstab $(dirname $0)/fstab
sudo chmod 755 $(dirname $0)/fstab
sudo chown pi:pi $(dirname $0)/fstab

if [ ! -f "/etc/fstab.bk" ];then
  sudo cp /etc/fstab /etc/fstab.bk
fi

cat $(dirname $0)/fstab | grep HDD
if [ $? -ne 0 ]; then
	sudo echo "/dev/sda	/home/pi/HDD	ext4	defaults,nofail	0	0" >> $(dirname $0)/fstab
fi

cat $(dirname $0)/fstab | grep SSD
if [ $? -ne 0 ]; then
	sudo echo "/dev/sdb	/home/pi/SSD	ext4	defaults,nofail	0	0" >> $(dirname $0)/fstab
fi

sudo chown root:root $(dirname $0)/fstab
sudo chmod 644 $(dirname $0)/fstab

sudo cp $(dirname $0)/fstab /etc/fstab
sudo rm -rf $(dirname $0)/fstab
