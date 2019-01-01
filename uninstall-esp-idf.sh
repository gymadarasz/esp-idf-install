#!/bin/bash

cd
yes | rm -r esp32/
yes | rm -r esp32/esp-idf
sudo rm -r /opt/xtensa-esp32-elf

echo "may you don't need the following dependencies:"
echo 'libncurses5 libncurses5-dev flex bison gperf'
echo 'Please run the following:'
echo "PATH=`echo $PATH | sed -e 's/:\/opt\/xtensa\-esp32\-elf\/bin$//'`"
echo 'unset IDF_PATH'
