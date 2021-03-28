#!/bin/bash

############################################################################
# Script name :                              Date   :                      #     
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Postgres install util for Manjaro                          #                                 
############################################################################                             


echo Installins posgresql and pgadmin...
sh new
sudo pacman -Sy postgresql pgadmin4
sudo -p mkdir /usr/local/pgsql
sudo chown postgres /usr/local/pgsql
echo -e "sudo su postgres\npg_ctl -D /usr/local/pgsql/data initdb" | sh

exit



