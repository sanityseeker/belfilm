#!/bin/bash
WEBSERVER_DIR="/var/www/html/belfilm/"
SITE_DIR="docs/"
PROJECT_DIR="/home/pi/belfilm"

cd $PROJECT_DIR; cd assets && listdirs img/ | shuf | head -n 50 > randomImages; cd $PROJECT_DIR;
hugo --gc -D
#echo "Enter root password to copy from $SITE_DIR to local $WEBSERVER_DIR"
#read -s pass
#echo pass | sudo -S rsync -auhr --info=progress2 $SITE_DIR $WEBSERVER_DIR --delete
