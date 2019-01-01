#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo 'Please set your esp32 application name, for example:'
    echo './clone-esp-idf-template.sh myapp';
    exit 0
fi
cd
git clone https://github.com/espressif/esp-idf-template $1
cd $1
make menuconfig
make -j5
