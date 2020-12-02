### Creating the Connector Workers

Use the provided Postman script to create the connect workers

Once that is done, you can use the REST proxy to see if the topics have showed up

You should see the topics for the products and product details

Now, we should be ready to run our Kafka streams program to interact with and process this data stream


Before we do that, lets get on the schema registry pod to see our streams of Avro-formatted data

```shell

# Check the status of the deployments and pods
kubectl -n river get deployments
kubectl -n river get pods


# Get on the pod for the schema registry deployment
kubectl -n river exec deploy/schemaregistry -it -- bash 

# Use the Avro Console Consumer to see the latest (starting from the most recent/newest offset) data in the products and product details topics
/usr/bin/kafka-avro-console-consumer --bootstrap-server broker1-internal:9092 --key-deserializer org.apache.kafka.common.serialization.IntegerDeserializer --property print.key=true --property schema.registry=http://schemaregistry-external.river.svc.cluster.local:8081 --topic estreams64.ecommerce.products

/usr/bin/kafka-avro-console-consumer --bootstrap-server broker1-internal:9092 --key-deserializer org.apache.kafka.common.serialization.IntegerDeserializer --property print.key=true --property schema.registry=http://schemaregistry-external.river.svc.cluster.local:8081 --topic estreams64.ecommerce.product_details

# Use the Avro Console Consumer to see the latest (starting from the earliest/oldest offset) data in the products and product details topics
/usr/bin/kafka-avro-console-consumer --bootstrap-server broker1-internal:9092 --key-deserializer org.apache.kafka.common.serialization.IntegerDeserializer --property print.key=true --from-beginning --property schema.registry=http://schemaregistry-external.river.svc.cluster.local:8081 --topic estreams64.ecommerce.products

/usr/bin/kafka-avro-console-consumer --bootstrap-server broker1-internal:9092 --key-deserializer org.apache.kafka.common.serialization.IntegerDeserializer --property print.key=true --from-beginning --property schema.registry=http://schemaregistry-external.river.svc.cluster.local:8081 --topic estreams64.ecommerce.product_details

```

