#!/bin/bash
SOURCE_FOLDER="/home/pi/shared/drive/Photos/Collections/"
TARGET_FOLDER="/home/pi/belfilm/assets/img/"
TYPES=("Scapes" "Street" "Portraits" "Things")

mkdir $TARGET_FOLDER 2> /dev/null
cd $TARGET_FOLDER
rm -rf $TARGET_FOLDER/*

for photo_type in "${TYPES[@]}"
do
    echo "Updating $photo_type sources..."
    cp -r "${SOURCE_FOLDER}${photo_type}/Inst/" $photo_type
done