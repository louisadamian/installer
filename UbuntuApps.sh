#!/bin/bash
sudo apt update -y
sudo snap install --classic code eclipse 
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg 
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list 
sudo apt update -y 
sudo apt install codium -y
sudo snap install --classic spotify
sudo apt install git mercurial -y # code management
sudo apt install curl -y
sudo apt install duplicity -y #backup
sudo apt install default-jre -y #java
sudo apt install python-is-python3 -y #python
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py 
python get-pip.py
rm get-pip.py
sudo pip install setuptools
sudo apt install clang cmake -y #c++
