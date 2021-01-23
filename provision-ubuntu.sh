#!/bin/bash

echo -e "\n Installation of Ubuntu 20.04LTS is going start. \n "
echo -e "Before that you need to enter some necessary information here. \n "
echo -e "------------------------------------------------------- \n "

echo -e "Please enter your Application Name: \c "
read  app_name
echo "App Name: \"app_name\""

if [[ $(pveam list local) ]]; then
        pct create 888 local:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz
else
        pveam download local ubuntu-20.04-standard_20.04-1_amd64.tar.gz
        pct create 888 local:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz

        echo "Ubuntu 20.04LTS installation is completed!"
fi

#Configuring the application in Reverse Proxy

echo -e "\nConfiguring Reverse Proxy for $app_name Application"
sleep 3
echo -e "\nConfiguring End Points for $app_name Application"
sleep 3
echo -e "\nApp $app_name can be accessed by using the following credentials"
sleep 2
echo -e "\nSubdomain: $app_name.shakil.me\nServer IP: 192.168.1.64\nDefault Username | Password: root | admin "
