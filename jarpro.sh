#!/usr/bin/bash

## clone repo

rm -rf Sweet-home
 
sudo chmod 777 Sweet-home

cd Sweet-home/eurekaserver

mvn clean install

if [ $? -ne 0 ]
then
	echo "Build Failed"
	exit 1;
fi


cd target

ls -al
