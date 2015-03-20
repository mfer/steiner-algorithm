#!/bin/bash

#sudo apt-get install git make

LD_LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH

PWD=$(pwd)

cd /tmp
wget -c http://pkgs.fedoraproject.org/repo/pkgs/glpk/glpk-4.35.tar.gz/d3277283a90c80d68d10832af6f63338/glpk-4.35.tar.gz
tar xvfz glpk-4.35.tar.gz
cd glpk-4.35/
./configure
make
sudo make install

cd /tmp
wget -c http://lemon.cs.elte.hu/pub/sources/lemon-1.2.4.tar.gz
tar xvfz lemon-1.2.4.tar.gz
cd lemon-1.2.4/
./configure
make
sudo make install

cd $PWD
make
