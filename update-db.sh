#!/bin/bash
pv bd/dev.sql.gz | gunzip | docker exec -i docker_mysql_1 mysql -u wordpress --password=wordpress wordpress
