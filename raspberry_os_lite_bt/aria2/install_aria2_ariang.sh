echo "Install Aria2"
sudo apt-get install -y aria2
mkdir -p /home/pi/download
mkdir -p /home/pi/.config/aria2
sudo cp $(dirname $0)/aria2.config /home/pi/.config/aria2/aria2.config
sudo cp $(dirname $0)/aria2.session /home/pi/.config/aria2/aria2.session
sudo cp $(dirname $0)/aria2.service /lib/systemd/system/aria2.service

#aria2c --conf-path=/home/pi/.config/aria2/aria2.config
sudo systemctl daemon-reload
sudo systemctl enable aria2
sudo systemctl start aria2
sudo systemctl status aria2

echo "Install nginx"
sudo apt-get install -y build-essential
sudo apt-get install -y libtool
sudo apt-get install -y libpcre3
sudo apt-get install -y libpcre3-dev
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y openssl
sudo apt-get install -y nginx

echo "Install AriaNg"
sudo wget https://github.com/mayswind/AriaNg/releases/download/1.3.7/AriaNg-1.3.7.zip
sudo unzip AriaNg-1.3.7.zip -d ariang
sudo rm -rf AriaNg-1.3.7.zip
sudo rm -rf /var/www/html/ariang
sudo cp -r ariang /var/www/html/ariang
sudo rm -rf ariang

echo "AriaNG访问地址：raspberrypi.local/ariang" >> Read_Me_After_Install.txt
echo "Aria2 RPC 密钥：secret" >> Read_Me_After_Install.txt
echo "Aria2 需要重新启动树莓派" >> Read_Me_After_Install.txt
