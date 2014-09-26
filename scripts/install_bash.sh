#!/bin/sh
# http://askubuntu.com/questions/528101/what-is-the-cve-2014-6271-bash-vulnerability-and-how-do-i-fix-it

mkdir shellshock
cd shellshock
wget http://ftp.gnu.org/gnu/bash/bash-4.3.tar.gz
#download all patches
for i in $(seq -f "%03g" 0 25); do wget     http://ftp.gnu.org/gnu/bash/bash-4.3-patches/bash43-$i; done
tar zxvf bash-4.3.tar.gz 
cd bash-4.3
#apply all patches
for i in $(seq -f "%03g" 0 25);do patch -p0 < ../bash43-$i; done
#build and install
./configure && make && make install
