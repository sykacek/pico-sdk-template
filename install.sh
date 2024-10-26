#! /bin/bash
if [[ "$EUID" -ne 0 ]]; then
    echo "Error, run with sudo"
    exit
fi

#check arguments
if [[ $# -ne 2 ]]
then
    echo "Invalid number of arguments"
    echo "Usage: sudo ./install.sh <pico-sdk-path> <freertos-kernel-path>"
    exit
fi

pico=$1
freertos=$2

sed -i "s%pico-sdk-path-goes-here%$pico%g" export.sh
sed -i "s%FreeRTOS-kernel-path-goes-here%$freertos%g" src/mkpico/CMakeLists.txt

#copy etries to /etc directory
cp -r src/mkpico /etc

#chmod
chmod 755 uninstall.sh
chmod 755 export.sh
chmod 755 src/mkpico.bin

#add binary executable
cp src/mkpico.bin /usr/bin/mkpico
