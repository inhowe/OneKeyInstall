if [ `whoami` != "pi" ]; then
	echo "Invalid user, must be pi"
	exit
fi

sudo rm -rf Read_Me_After_Install.txt
touch Read_Me_After_Install.txt
chmod 666 Read_Me_After_Install.txt
sudo apt-get -y update
sudo apt-get -y upgrade

file="./general/general.sh"
chmod +x $file
$file

file="./zsh/install_zsh.sh"
chmod +x $file
$file

file="./vim/install_vim.sh"
chmod +x $file
$file

# 不能自动挂载
file="./mount_disk/mount_disk.sh"
chmod +x $file
$file

file="./samba/install_samba.sh"
chmod +x $file
$file

file="./aria2/install_aria2_ariang.sh"
chmod +x $file
$file

file="./auto_startup/install_auto_startup.sh"
chmod +x $file
$file

file="./bt/bt.sh"
chmod +x $file
$file

echo "script finished!"
sudo reboot
