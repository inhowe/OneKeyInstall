chmod +x ./*.sh

# 复制自启动子脚本
sudo cp keep_hdd_awake.sh /bin/keep_hdd_awake.sh

# 复制自启动父脚本
sudo cp auto_startup.sh /bin/auto_startup.sh
sudo cp auto_startup.service /etc/systemd/system/auto_startup.service
sudo systemctl daemon-reload
sudo systemctl enable auto_startup.service
sudo systemctl stop auto_startup.service
sudo systemctl start auto_startup.service
echo "auto_startup service installed and enabled"
