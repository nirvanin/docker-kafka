# Docker image for Kafka 2.6.0

Lightweight Docker image packaging the execution of Kafka 2.6.0 and Zookeeper

## Run

```bash
docker run -p 2181:2181 -p 9092:9092 --env ADVERTISED_LISTENERS=PLAINTEXT://docker_host:9092 teivah/kafka:2.6.0
```

Default ports:
- 2181: Zookeeper
- 9092: Kafka

## Environment variables

The following Kafka options are configurable by passing an environment variable to the Docker container (```--env key=value```):

- ```LOG_RETENTION_HOURS```: log.retention.hours 
- ```LISTENERS```: listeners
- ```ADVERTISED_LISTENERS```: advertised.listeners 
- ```NUM_PARTITIONS```: num.partitions
- ```LOG_FLUSH_INTERVAL_MESSAGES```: log.flush.interval.messages 
- ```LOG_FLUSH_INTERVAL_MS```: log.flush.interval.messages
- ```NUM_IO_THREADS```: num.io.threads
- ```SOCKET_SEND_BUFFER_BYTES```: socket.send.buffer.bytes 
- ```SOCKET_RECEIVE_BUFFER_BYTES```: socket.receive.buffer.bytes 
- ```SOCKET_REQUEST_MAX_BYTES```: socket.request.max.bytes
