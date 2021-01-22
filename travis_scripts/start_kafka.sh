scp -i all-stock-key-pair.pem travis_scripts/start_kafka.sh ubuntu@ec2-3-124-206-1.eu-central-1.compute.amazonaws.com:.
ssh -i "all-stock-key-pair.pem" ubuntu@ec2-3-120-98-15.eu-central-1.compute.amazonaws.com 'bash start_kafka.sh'
cd kafka_2.12-2.5.0/
kafka-server-stop.sh
zookeeper-server-stop.sh
nohup zookeeper-server-start.sh config/zookeeper.properties &
nohup kafka-server-start.sh config/server.properties &
