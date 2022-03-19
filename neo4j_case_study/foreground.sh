#/bin/bash
docker run \
    --name neo4j-katacoda \
    -d \
    -p 7474:7474 -p 7687:7687 \
    lexha/neo4j-katacoda:latest
sleep 10
docker exec -it neo4j-katacoda bash 
