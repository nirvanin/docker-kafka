Simple Docker image for Kafka 1.0.0

Run the following command by replacing _<DOCKER_HOST>_ with your Docker host IP:
```bash
docker run -p 2181:2181 -p 9092:9092 --env ADVERTISED_HOST=<DOCKER_HOST> --env ADVERTISED_PORT=9092 spotify/kafka
```

2181 is the Zookeeper port, while 9092 is the Kafka port.

Inside of your container, run the following commands:

* To create a Kafka producer:

```bash
kafka-console-producer.sh --broker-list <DOCKER_HOST> --topic test
```

* To create a Kafka consumer:

```bash
kafka-console-consumer.sh --zookeeper <DOCKER_HOST> --topic test
```