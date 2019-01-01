#!/bin/bash

cd
mkdir esp32
cd esp32
wget http://www.neilkolban.com/esp32/downloads/xtensa-esp32-elf.tar.gz
sudo tar --extract --directory /opt --ungzip --file xtensa-esp32-elf.tar.gz
rm *.gz
PATH=$PATH:/opt/xtensa-esp32-elf/bin
git clone --recursive https://github.com/espressif/esp-idf.git
cd esp-idf
git submodule update --init
cd ..
export IDF_PATH=$PWD/esp-idf

sudo apt-get install libncurses5 libncurses5-dev flex bison gperf

echo 'Please run the following:'
echo 'PATH=$PATH:/opt/xtensa-esp32-elf/bin'
echo 'export IDF_PATH='$PWD'/esp-idf'
