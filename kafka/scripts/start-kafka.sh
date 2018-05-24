#!/bin/bash
# Rebalance delay
perl /usr/bin/confset.pl $KAFKA_HOME/config/server.properties group.initial.rebalance.delay.ms=3000

# Configure the advertised host
if [ ! -z "$ADVERTISED_HOST" ]; then
    echo "setting advertised host: $ADVERTISED_HOST"
    perl /usr/bin/confset.pl $KAFKA_HOME/config/server.properties advertised.host.name=$ADVERTISED_HOST
fi

# Configure the advertised port
if [ ! -z "$ADVERTISED_PORT" ]; then
    echo "setting advertised port: $ADVERTISED_PORT"
    perl /usr/bin/confset.pl $KAFKA_HOME/config/server.properties advertised.port=$ADVERTISED_PORT
fi

# Configure the log retention hours
if [ ! -z "$LOG_RETENTION_HOURS" ]; then
    echo "setting log retention hours: $LOG_RETENTION_HOURS"
    perl /usr/bin/confset.pl $KAFKA_HOME/config/server.properties log.retention.hours=$LOG_RETENTION_HOURS
fi

# Configure the log retention bytes
if [ ! -z "$LOG_RETENTION_BYTES" ]; then
    echo "setting log retention bytes: $LOG_RETENTION_BYTES"
    perl /usr/bin/confset.pl $KAFKA_HOME/config/server.properties log.retention.bytes=$LOG_RETENTION_BYTES
fi

# Configure the default number of log partitions per topic
if [ ! -z "$NUM_PARTITIONS" ]; then
    echo "setting number of partitions: $NUM_PARTITIONS"
    perl /usr/bin/confset.pl $KAFKA_HOME/config/server.properties num.partitions=$NUM_PARTITIONS
fi

# Enable/disable auto creation of topics
if [ ! -z "$AUTO_CREATE_TOPICS" ]; then
    echo "setting auto create topics: $AUTO_CREATE_TOPICS"
    perl /usr/bin/confset.pl $KAFKA_HOME/config/server.properties auto.create.topics.enable=$AUTO_CREATE_TOPICS
fi

# Run Kafka
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties