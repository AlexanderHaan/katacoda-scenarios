echo "Importing data, please wait ..."
cat /var/lib/neo4j/import_data.cql | cypher-shell
echo "Data successfully imported"