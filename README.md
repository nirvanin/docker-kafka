# Docker image for Kafka 1.1.0

Lightweight Docker image packaging Kafka 1.1.0 and Zookeeper

Docker hub: [https://hub.docker.com/r/teivah/kafka](https://hub.docker.com/r/teivah/kafka) 

## Run

Run the following command by replacing <DOCKER_HOST> with your Docker host IP:
```bash
docker run -p 2181:2181 -p 9092:9092 --env ADVERTISED_HOST=<DOCKER_HOST> --env ADVERTISED_PORT=9092 teivah/kafka
```

Default ports:
- 2181: Zookeeper
- 9092: Kafka

If you need to change the Kafka port, you must change the port mapping and the ADVERTISED_PORT.

## Environment variables

- ADVERTISED_HOST: Hostname published to Zookeeper
- ADVERTISED_PORT: Port published to Zookeeper
- LOG_RETENTION_HOURS: Number of hours to keep a log file
- LOG_RETENTION_BYTES: Maximum size of the log before deleting it
- NUM_PARTITIONS: Default number of log partitions per topic
- AUTO_CREATE_TOPICS: Enable auto creation of topics (default: true)