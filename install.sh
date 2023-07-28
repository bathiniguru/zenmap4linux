#!/bin/bash
echo "Running commands as a root user to install zenmap..."
mkdir zenmap
cd zenmap
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-gtk2_2.24.0-5.1ubuntu2_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pycairo/python-cairo_1.16.2-2ubuntu2_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygobject-2/python-gobject-2_2.28.6-14ubuntu1_amd64.deb
wget https://nmap.org/dist/zenmap-7.92-1.noarch.rpm
sudo apt-get update
sudo apt-get  install alien 
sudo alien --to-deb zenmap-7.92-1.noarch.rpm
sudo dpkg -i *.deb 
sudo apt-get --fix-broken install 
cd ..
sudo rm -rf zenmap
echo "All done."
