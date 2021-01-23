cd kafka_2.12-2.5.0/ || exit
kafka-server-stop.sh
zookeeper-server-stop.sh
nohup zookeeper-server-start.sh config/zookeeper.properties &
nohup kafka-server-start.sh config/server.properties &
