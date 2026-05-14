#!/bin/bash

date
echo "We in here. $(pwd)"

mkdir -p cloud_shenanigans/backup

BASE_DIR=$(pwd)
BACKUP_DIR="cloud_shenanigans/backup"

touch identity.txt cloud-goals.txt aspirations.txt dreams.txt

echo "It's ya boy. $(whoami), with an original." >> identity.txt
echo "All I wanna do is get on my way to be a cloud engineer." >> cloud-goals.txt
echo "It's the best job of all time." >> aspirations.txt
echo "--if I could be a cloud engineer, I would be the happiest person alive." >> dreams.txt

#Listing everything in the directory, with some flags. 

ls -lta

#Copying

cp -v identity.txt $BACKUP_DIR/
cp -v cloud-goals.txt $BACKUP_DIR

#Moving Selected Files

mv -v identity.txt cloud-goals.txt $BACKUP_DIR/

#Removing Files and Directories

rm -v $BACKUP_DIR/identity.txt
rm -v $BACKUP_DIR/cloud-goals.txt
rm -r $BACKUP_DIR/

mkdir -p ../indecision
INDECISION_DIR="../indecision"

#Created a whole new directory and copied everything in there.
cp -pr $BASE_DIR/ $INDECISION_DIR/

#Populating information for a report of what's happened. 

echo "Cloud Practice Report" > final_report.txt
echo "Ran on: $(date)" >> final_report.txt
echo "Current directory: $BASE_DIR" >> final_report.txt
echo "Created directories: $BACKUP_DIR and $INDECISION_DIR" >> final_report.txt
echo "Created files: identity.txt, cloud-goals.txt, aspirations.txt, and dreams.txt" >> final_report.txt
echo "Copied files: identity.txt and cloud-goals.txt into $BACKUP_DIR" >> final_report.txt
echo "Moved files: identity.txt and cloud-goals.txt into $BACKUP_DIR" >> final_report.txt
echo "Removed files: identity.txt and cloud-goals.txt from $BACKUP_DIR" >> final_report.txt
echo "Removed directory: $BACKUP_DIR" >> final_report.txt
echo "Copied current working directory into $INDECISION_DIR using cp -pr" >> final_report.txt

cat final_report.txt

sleep 3
echo "Bout to nap, fr."