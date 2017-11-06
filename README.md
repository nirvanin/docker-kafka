**Simple Docker image for Kafka 1.0.0**

Docker hub: [https://hub.docker.com/r/teivah/kafka](https://hub.docker.com/r/teivah/kafka) 

Run the following command by replacing _<DOCKER_HOST>_ with your Docker host IP:
```bash
docker run -p 2181:2181 -p 9092:9092 --env ADVERTISED_HOST=<DOCKER_HOST> --env ADVERTISED_PORT=9092 spotify/kafka
```

2181 is the Zookeeper port, while 9092 is the Kafka port.

Inside of your container, run the following commands:

* To create a Kafka producer:

```bash
/opt/kafka_2.11-1.0.0/bin/kafka-console-producer.sh --broker-list <DOCKER_HOST>:9092 --topic test
```

* To create a Kafka consumer:

```bash
/opt/kafka_2.11-1.0.0/bin/kafka-console-consumer.sh --bootstrap-server <DOCKER_HOST>:9092 --topic test
```