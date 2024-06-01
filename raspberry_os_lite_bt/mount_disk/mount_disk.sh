sudo apt-get install -y ntfs-3g
sudo apt-get install -y exfat-fuse
sudo modprobe fuse

sudo mkdir -p /mnt/HDD
sudo mkdir -p /mnt/SSD

sudo chmod 777 /mnt/HDD
sudo chmod 777 /mnt/SSD

sudo mount -t ext4 /dev/sda /mnt/HDD
sudo mount -t exfat /dev/sdb1 /mnt/SSD

# 挂载添加进启动脚本
sudo sed -i '/exit /i sudo mount -t ext4 /dev/sda /mnt/HDD' /etc/rc.local
sudo sed -i '/exit /i sudo mount -t exfat /dev/sdb1 /mnt/SSD' /etc/rc.local
