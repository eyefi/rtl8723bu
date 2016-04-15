#!/bin/sh
#export LINUX_VER=3.4.103-00033-g9a1cd03-dirty
export LINUX_VER=3.4.104+
mkdir ../linux-sunxi/out/lib/modules/$LINUX_VER/kernel/drivers/net/wireless
make clean
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- KSRC=../linux-sunxi INSTALL_MOD_DIR=../linux-sunxi/out MODDESTDIR=../linux-sunxi/out/lib/modules/$LINUX_VER/kernel/drivers/net/wireless KVER=$LINUX_VER modules
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- KSRC=../linux-sunxi INSTALL_MOD_DIR=../linux-sunxi/out MODDESTDIR=../linux-sunxi/out/lib/modules/$LINUX_VER/kernel/drivers/net/wireless KVER=$LINUX_VER install
