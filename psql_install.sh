#!/bin/bash

############################################################################
# Script name :                              Date   :                      #     
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Postgres install util for Manjaro                          #                                 
############################################################################                             

sh new
echo Installins posgresql and pgadmin...
sudo pacman -Sy postgresql pgadmin4
echo DB cluster init...
sudo mkdir -p /usr/local/pgsql
sudo chown postgres /usr/local/pgsql
#echo -e "sudo su postgres\npg_ctl -D /usr/local/pgsql/data initdb" | sh
sudo su - postgres -c "initdb --locale en_US.UTF-8 -D '/var/lib/postgres/data'"
pgsql --version
echo Setup and start postgresql.service...
sudo systemctl enable --now postgresql
sudo systemctl status postgresql
#sudo systemctl start postgresql

