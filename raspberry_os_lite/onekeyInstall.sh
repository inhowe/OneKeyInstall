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

# OMV 会和磁盘挂载和samba冲突
echo "Do you want to install OMV?[Y/n]"
echo "(OMV is not tested!)"
read answer
case $answer in
(Y | y)
	file="./omv/install_omv.sh"
	chmod +x $file
	$file
	;;
(N | n)
	file="./mount_disk/mount_disk.sh"
	chmod +x $file
	$file

	file="./samba/install_samba.sh"
	chmod +x $file
	$file

	file="./aria2/install_aria2_ariang.sh"
	chmod +x $file
	$file
	;;
(*)
	echo "error choice";;
esac

echo "script finished!"
sudo reboot
