#!/bin/bash
#Setup for all dependancies needed to open RUDA Jupyter Notebook on a new Ubuntu 18.04 system
#Install Git and link to user account
#Download and install Sublime

#Update and upgrade Ubuntu  
sudo apt-get -y update
sudo apt-get -y upgrade

#Install Git
sudo apt install -y git-all
git config --global user.name "Damjan0505"
git config --global user.email damjan.hatic@gmail.com

#Download and install Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

#Install and upgrade PIP for Python 3.6 and install all dependancies
sudo apt-get install -y python3-pip
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install jupyter
sudo python3 -m pip install numpy
sudo python3 -m pip install keras
sudo python3 -m pip install matplotlib
sudo python3 -m pip install opencv-python

#Install and upgrade PIP for Python 3.6 and install all dependancies

sudo apt-get install -y python-pip
sudo python -m pip install --upgrade pip
sudo python -m pip install jupyter
sudo python -m pip install numpy
sudo python -m pip install keras
sudo python -m pip install matplotlib
sudo python -m pip install opencv-python
sudo python -m pip install Pillow

#Clean up all duplicate libraries
sudo apt autoremove
