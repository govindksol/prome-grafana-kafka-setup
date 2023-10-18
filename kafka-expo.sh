[Unit]
Description=Prometheus Kafka Exporter
After=network.target

[Service]
User=your_username
ExecStart=/opt/kafka/kafka_exporter --kafka.server=52.11.92.61:9092 --web.telemetry-path="/metrics" --web.listen-address=":9308"
Restart=always

[Install]
WantedBy=multi-user.target



sudo systemctl daemon-reload

sudo systemctl enable kafka-exporter
sudo systemctl start kafka-exporter
sudo systemctl status kafka-exporter