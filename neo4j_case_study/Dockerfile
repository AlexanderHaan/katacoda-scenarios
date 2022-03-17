FROM neo4j:3.4
COPY data /var/lib/neo4j/import
COPY import_data.cql /var/lib/neo4j/import_data.cql
COPY import_data.sh /var/lib/neo4j/import_data.sh

RUN ["chmod", "+x", "/var/lib/neo4j/import_data.sh"]

ENV NEO4J_AUTH=none
EXPOSE 7474
EXPOSE 7687