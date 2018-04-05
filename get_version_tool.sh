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
{
    java -version
    echo "# Java Version" >> versions-$date.md
    java -version >> versions-$date.md
} || {
    echo "No java"
}

##### Python2 pip packages Version #####
echo "# python2 packages version"
{
pip list --format=freeze
echo "# python2 packages version" >> versions-$date.md
pip list --format=freeze >> versions-$date.md
} || {
    echo "No python2"
}

##### Python3 pip3 packages Version #####
echo "# python3 packages version"
{
pip3 list
echo "# python3 packages version" >> versions-$date.md
pip3 list >> versions-$date.md
} || {
    echo "No python3"
}

##### Cuda Version #####
echo "# nvcc version"
{
nvcc --version
echo "# nvcc version" >> versions-$date.md
echo "cuda(nvcc)==`nvcc --version`" >> versions-$date.md
} || {
    echo "No Cuda"
}

##### Jupyter notebook Version #####
echo "# jupyter notebook version"
{
jupyter notebook --version
echo "# jupyter notebook version" >> versions-$date.md
echo "jupyter notebook==`jupyter notebook --version`" >> versions-$date.md
} || {
    echo "No jupyter notebook"
}
