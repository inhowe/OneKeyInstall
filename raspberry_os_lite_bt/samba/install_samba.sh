echo "Install samba"
sudo apt-get install -y samba

sudo cp $(dirname $0)/smb.conf /etc/samba/smb.conf
sudo cp $(dirname $0)/bt_share.conf /etc/samba/bt_share.conf

# 开放端口
sudo ufw allow 139
sudo ufw allow 445

echo "Please input your pi password":
sudo smbpasswd -a pi
sudo systemctl restart smbd

sleep 3
sudo service smbd restart

echo "SAMBA挂载地址：\\树莓派ip地址\pi"  >> Read_Me_After_Install.txt
echo "SAMBA挂载地址：\\树莓派ip地址\HDD"  >> Read_Me_After_Install.txt
echo "SAMBA挂载地址：\\树莓派ip地址\SSD"  >> Read_Me_After_Install.txt
echo "如果不能映射网络驱动器，尝试在cmd窗口里执行net use * /delete"  >> Read_Me_After_Install.txt