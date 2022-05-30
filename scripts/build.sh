#!/bin/bash
WEBSERVER_DIR="/var/www/html/belfilm/"
SITE_DIR="docs/"
GIT_DIR="/home/pi/belfilm-website/belfilm-git/"
PROJECT_DIR="/home/pi/belfilm-website/belfilm"

cd $PROJECT_DIR; cd assets && listdirs img/ | shuf | head -n 50 > randomImages; cd $PROJECT_DIR;
hugo -D
echo "Enter root password to copy from $SITE_DIR to $WEBSERVER_DIR"
read -s pass
echo pass | sudo -S rsync -auhr --info=progress2 $SITE_DIR $WEBSERVER_DIR --delete
rsync --info=progress2 $SITE_DIR $GIT_DIR
