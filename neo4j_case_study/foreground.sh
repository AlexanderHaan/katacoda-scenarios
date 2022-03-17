#/bin/bash

# Run Neo4j image and start it
docker build -t neo4j . \
    --rm

docker run \
    --rm \
    -p 7474:7474 \
    -p 7687:7687 \
    --name neo4j \
    -d \
    neo4j

sleep 10

docker exec -d neo4j /bin/bash /var/lib/neo4j/import_data.sh

sleep 10