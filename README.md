# How to Set Up

1. Download the repo content
2. Go to the `/docker` folder
3. Run `docker-compose up`

## Available Tools

### MailHog

Uncomment the `mailhog` section in the `docker-compose.yml`. It'll be available at `http://localhost:8025`. Make sure to keep the `docker/dev.ini` content.

### PHPMyAdmin

Uncomment the `phpmyadmin` section in the `docker-compose.yml`. It'll be available at `http://localhost:8080`.

## DB

### To import and export a DB Dump

As database content is not versioned by default, you can run `./dump-db.sh` to generate a dump of the dev DB version. To restore the existent dev DB version, you can run `./update-db.sh`. CAUTION: It will overwrite your database.

### To import from the Live Env

It is possible to automatically generate a database dump from the live/production site. You'll need to change the `update-local-from-live.sh` file and then run it.