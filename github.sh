#!/bin/bash

cd ~ 
mkdir -p Projects && cd Projects
cat ~/.ssh/id_ed25519.pub

echo copy the public key to github
echo https://github.com/settings/keys
read var1
git clone git@github.com:KonstantinSKY/Manjaro.git
#git clone git@github.com:KonstantinSKY/Linux.git
#git clone git@github.com:KonstantinSKY/helpers.git
