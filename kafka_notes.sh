wget https://archive.apache.org/dist/kafka/0.10.0.0/kafka_2.11-0.10.0.0.tgz
tar -xvf kafka_2.11-0.10.0.0.tgz
sudo mv kafka_2.11-0.10.0.0 /opt/kafka
sudo apt update
sudo apt install openjdk-8-jdk -y
java -version

cd /opt/kafka
export KAFKA_HEAP_OPTS="-Xmx256M -Xms128M"

bin/zookeeper-server-start.sh config/zookeeper.properties
bin/kafka-server-start.sh config/server.properties
bin/kafka-topics.sh --create --topic demo_test3 --zookeeper 52.11.92.61:2181 --replication-factor 2 --partitions 2
bin/kafka-topics.sh --list --zookeeper 52.11.92.61:2181
bin/kafka-console-consumer.sh --topic demo_test2 --zookeeper 52.11.92.61:2181
bin/kafka-console-producer.sh --broker-list 52.11.92.61:9092  --topic demo_test2