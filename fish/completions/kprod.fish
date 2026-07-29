#kafka-consumer-groups.sh --bootstrap-server pkc-57q33g.westeurope.azure.confluent.cloud:9092 --command-config "./admin.properties.confluent"  --describe --all-groups > consumer-groups.txt
complete -c kprod -f

complete -c kprod -l bootstrap-server -a "(cat ~/.config/kafka/bootstrap-servers)" -d "Kafka bootstrap server"
complete -c kprod -l producer.config -a "(find /home/willem/.config/kafka/clusters -type f)" -d "properties file"
complete -c kprod -l topic
