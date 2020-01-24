# End-to-end demo of Debezium used during presentations

The sample project:

* sets up Kafka broker, Kafka Connect with MySql and Postgress databases
* configures Debezium connector to capture and stream data changes from MySql to Kafka broker
* configures JDBC sink connector to stream the events from Kafka brokerPostgresSQL
* contains data  to see the results
  
## How to run   
  * run environment
  ```
  docker-compose up
  ```
  * check is running in browser
  ```
    http://localhost:3030/
    
   ```
  * register debezium source connector   
  ```
    cat register-src-connector.json | http POST http://localhost:8083/connectors/
  ```
  register jdbc sink   connector   
  ```
    cat jdbc-sink.json | http POST http://localhost:8083/connectors/
  ```
  
  
## How to run (second version with separated images without landoop - without UI)  
- export DEBEZIUM_VERSION=0.9
- docker-compose up -f  docker-compose_separated.yaml
or (to rebuild docker images) use 
- docker-compose up -d --force-recreate --build -f  docker-compose_separated.yaml

# Links 
https://debezium.io/
https://docs.confluent.io/2.0.0/connect/