#!/bin/sh
# A script to get packages version
# Author: Samina Fu(@sufuf3)
# date:20180405
#
# OS: Ubuntu
# Run: sh check_versions.sh

date="$(date +"%F_%T")"

##### Package Versions #####
Packages=`sudo dpkg --get-selections | grep -w install | awk '{print $1}'`
echo "# Packages' Verson"
echo "# Packages' Verson" >> versions-$date.md
for p in $Packages
do
    echo "$p==`apt-cache policy $p | grep Installed | awk '{print $2}'`"
    echo "$p==`apt-cache policy $p | grep Installed | awk '{print $2}'`" >> versions-$date.md
done

##### Java Version #####
echo "# Java Version"
try{
    java -version
    echo "# Java Version" >> versions-$date.md
    java -version >> versions-$date.md
}
catch || {
}

##### Python2 pip packages Version #####
echo "# python2 packages version"
echo "# python2 packages version" >> versions-$date.md
pip list --format=freeze
pip list --format=freeze >> versions-$date.md

##### Python3 pip3 packages Version #####
echo "# python3 packages version"
echo "# python3 packages version" >> versions-$date.md
pip3 list --format=freeze
pip3 list --format=freeze >> versions-$date.md

##### Cuda Version #####
echo "# nvcc version"
echo "# nvcc version" >> versions-$date.md
nvcc --version >> versions-$date.md

##### Jupyter notebook Version #####
echo "# jupyter notebook version"
echo "# jupyter notebook version" >> versions-$date.md
jupyter notebook --version
jupyter notebook --version >> versions-$date.md
