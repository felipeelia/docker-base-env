#!/bin/bash
docker exec -i docker_wordpress_1 mysqldump -h mysql -u wordpress -pwordpress --add-drop-table wordpress | gzip > "./bd/dev.sql.gz"
