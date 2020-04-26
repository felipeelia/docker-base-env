#!/bin/bash
echo "Generating a production DB dump"
ssh host "mysqldump -h localhost -u DB_USER -p --add-drop-table DB_NAME | gzip" > ./bd/prod.sql.gz

echo "GUnzipping"
pv bd/prod.sql.gz | gunzip | docker exec -i docker_mysql_1 mysql -u wordpress --password=wordpress wordpress

echo "Search and replace"
docker exec -i docker_wordpress_1 wp search-replace DOMAIN localhost --all-tables
