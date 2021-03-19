#!/bin/bash

#Install ssh server for manjaro and show IP 

echo searching for fast mirrors...
sudo pacman-mirrors -f


echo Update system..
sudo pacman -Syyu

echo Install and start SSH server...
sudo pacman -Sy openssh
sudo systemctl status sshd
sudo systemctl start sshd
sudo systemctl status sshd
sudo systemctl enable sshd


echo generate SSH keys... 
ssh-keygen -t ed25519 

echo showing yur IP 
ip a | grep inet

