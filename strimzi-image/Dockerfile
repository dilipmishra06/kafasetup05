FROM strimzi/kafka:0.20.0-rc1-kafka-2.5.1
USER root:root
RUN mkdir -p /opt/kafka/plugins/debezium-sql
RUN mkdir -p /opt/kafka/plugins/debezium-jdbc
RUN mkdir -p /opt/kafka/plugins/debezium-sqlserver
RUN mkdir -p /opt/kafka/plugins/confluent-s3sink
COPY ./debezium-connector-mysql/ /opt/kafka/plugins/debezium-sql
COPY ./debezium-connector-jdbc/ /opt/kafka/plugins/debezium-jdbc
COPY ./debezium-connector-sqlserver/ /opt/kafka/plugins/debezium-sqlserver
COPY ./confluentinc-kafka-connect-s3-10.5.9/lib/ /opt/kafka/plugins/confluent-s3sink
USER 1001