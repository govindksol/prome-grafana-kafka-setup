sudo nano /etc/systemd/system/zookeeper.service

[Unit]
Description=ZooKeeper Service
After=network.target

[Service]
Type=simple
ExecStart=/opt/kafka/bin/zookeeper-server-start.sh /opt/kafka/config/zookeeper.properties
ExecStop=/opt/kafka/bin/zookeeper-server-stop.sh
User=ubuntu

[Install]
WantedBy=multi-user.target

sudo systemctl daemon-reload
sudo systemctl enable zookeeper
sudo systemctl start zookeeper
sudo systemctl restart zookeeper
sudo systemctl status zookeeper