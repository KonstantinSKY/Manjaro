#!/bin/bash

echo First setup Manjaro system

echo Seting pamac.conf...
echo Allow Pamac to search and install packages from AUR:... ON
echo When AUR support is enabled check for updates from AUR:...ON

sudo sed --in-place=.bak -e'
	s/#EnableAUR/EnableAUR/
	s/#CheckAURUpdates/CheckAURUpdates/' /etc/pamac.conf

#TODO baks.dir




