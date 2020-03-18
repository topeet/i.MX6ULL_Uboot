#!/bin/bash

export ARCH=arm

#export CROSS_COMPILE=/usr/local/arm/gcc-4.6.2-glibc-2.13-linaro-multilib-2011.12/fsl-linaro-toolchain/bin/arm-none-linux-gnueabi-

export CROSS_COMPILE=arm-linux-gnueabihf-

make distclean

#make mx6ul_topeet_defconfig
if   [ "$1" = "nand" ]
then
        make mx6ul_topeet_nand_defconfig
else
        make mx6ul_topeet_emmc_defconfig
fi

make 2>&1
