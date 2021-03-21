#!/bin/bash

#check and install LTS kernel

LTS_Kernel="linux54"

echo "Last knows LTS kernel is $LTS_Kernel"

echo "Avaible kernels"
mhwd-kernel -l

mhwd-kernel -li

while true; do
    read -p "Do you wish to install kernel $LTS_Kernel and remove intalled?" yn
    case $yn in
        [Yy]* ) sudo mhwd-kernel -i $LTS_Kernel rmc; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done




