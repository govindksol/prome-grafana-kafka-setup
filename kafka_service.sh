sudo nano /etc/systemd/system/kafka.service

[Unit]
Description=Kafka Service
After=zookeeper.service

[Service]
Environment="KAFKA_HEAP_OPTS=-Xmx256M -Xms128M"
Environment="KAFKA_OPTS=-javaagent:/opt/kafka/jmx_prometheus_javaagent-0.19.0.jar=8080:/opt/kafka/kafka-0-8-2.yml"
Type=simple
ExecStart=/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties
ExecStop=/opt/kafka/bin/kafka-server-stop.sh
User=ubuntu
Restart=always

[Install]
WantedBy=multi-user.target

sudo systemctl daemon-reload
sudo systemctl enable kafka
sudo systemctl restart kafka
sudo systemctl status kafka
sudo systemctl start kafka