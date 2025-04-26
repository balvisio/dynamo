# Intructions to run multi-node setup

```
# On node 1
docker compose -f deploy/docker-compose.yml up -d
./run1.sh

# On Node 2
./run2.sh  # Change IP addresses accordinly

./send_request.sh
```