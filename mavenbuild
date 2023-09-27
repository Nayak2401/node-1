#!/usr/bin/bash

## clone repo

rm -rf Sweet-home

git clone https://github.com/vinod0111/Sweet-home.git
 
echo "Nayak@1234" | sudo -S chmod 777 Sweet-home

cd Sweet-home/eurekaserver

mvn clean install

if [ $? -ne 0 ]
then
	echo "Build Failed"
	exit 1;
fi


cd target

ls -al
