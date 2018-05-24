# Docker image for Kafka 1.1.0

Lightweight Docker image packaging Kafka 1.1.0 and Zookeeper

Docker hub: [https://hub.docker.com/r/teivah/kafka](https://hub.docker.com/r/teivah/kafka) 

## Run

Run the following command by replacing _<DOCKER_HOST>_ with your Docker host IP:
```bash
docker run -p 2181:2181 -p 9092:9092 --env ADVERTISED_HOST=<DOCKER_HOST> --env ADVERTISED_PORT=9092 teivah/kafka
```

Default ports:
- 2181: Zookeeper
- 9092: Kafka

If you need to change the Kafka port, you must change the port mapping and the _ADVERTISED_PORT_.

## Environment variables

- _ADVERTISED_HOST_: Hostname published to Zookeeper
- _ADVERTISED_PORT_: Port published to Zookeeper
- _LOG_RETENTION_HOURS_: Number of hours to keep a log file
- _LOG_RETENTION_BYTES_: Maximum size of the log before deleting it
- _NUM_PARTITIONS_: Default number of log partitions per topic
- _AUTO_CREATE_TOPICS_: Enable auto creation of topics (default: true)