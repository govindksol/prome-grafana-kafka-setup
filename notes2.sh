sudo systemctl daemon-reload
sudo systemctl restart prometheus
sudo systemctl enable prometheus
sudo systemctl status prometheus


sudo systemctl restart prometheus



sudo apt-get install -y software-properties-common
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install grafana -y

sudo systemctl start grafana-server
sudo systemctl enable grafana-server
sudo systemctl status grafana-server
java -javaagent:/etc/prometheus/jmx_prometheus_javaagent-0.19.0.jar=8080:/etc/prometheus/kafka-0-8-2.yml