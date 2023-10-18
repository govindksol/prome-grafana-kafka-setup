# Download Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.34.0/prometheus-2.34.0.linux-amd64.tar.gz

# Extract the archive
tar -xzf prometheus-2.34.0.linux-amd64.tar.gz

# Move the binary to /usr/local/bin
sudo mv prometheus-2.34.0.linux-amd64/prometheus /usr/local/bin/
sudo mv prometheus-2.34.0.linux-amd64/promtool /usr/local/bin/


sudo useradd -rs /bin/false prometheus
sudo usermod -aG prometheus prometheus

sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
cd /etc/prometheus
sudo chown prometheus:prometheus /etc/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus

# Create a Prometheus configuration file
sudo touch prometheus.yml
sudo nano prometheus.yml

sudo nano /etc/systemd/system/prometheus.service