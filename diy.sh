#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author:  smart
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sudo apt-get update
udo apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler
git clone -b dev-19.07 https://github.com/Lienol/openwrt
 cd openwrt
./scripts/feeds clean
./scripts/feeds update -a
./scripts/feeds install -a
make menuconfig
