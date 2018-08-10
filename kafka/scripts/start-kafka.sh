#!/bin/bash

conf() {
    if [ ! -z "$2" ]; then
        echo "setting advertised host: $2"
        perl /usr/bin/confset.pl $KAFKA_HOME/config/server.properties $1=$2
    fi
}

conf "log.retention.hours" $LOG_RETENTION_HOURS
conf "listeners" $LISTENERS
conf "advertised.listeners" $ADVERTISED_LISTENERS
conf "num.partitions" $NUM_PARTITIONS
conf "log.flush.interval.messages" $LOG_FLUSH_INTERVAL_MESSAGES
conf "log.flush.interval.ms" $LOG_FLUSH_INTERVAL_MS
conf "num.io.threads" $NUM_IO_THREADS
conf "socket.send.buffer.bytes" $SOCKET_SEND_BUFFER_BYTES
conf "socket.receive.buffer.bytes" $SOCKET_RECEIVE_BUFFER_BYTES
conf "socket.request.max.bytes" $SOCKET_REQUEST_MAX_BYTES

# Run Kafka
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties