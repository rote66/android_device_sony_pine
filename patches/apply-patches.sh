#!/bin/bash
cd ../../../..
cd bionic
patch -p1 < ../device/sony/pine/patches/bionic/if.patch
patch -p1 < ../device/sony/pine/patches/bionic/bionic_libc.patch
cd ..
cd frameworks/av
patch -p1 < ../../device/sony/pine/patches/frameworks/av.patch
patch -p1 < ../../device/sony/pine/patches/frameworks/0006-fix-access-wvm-to-ReadOptions.patch
patch -p1 < ../../device/sony/pine/patches/frameworks/0008-Partial-Revert-Camera1-API-Support-SW-encoders-for-n.patch
patch -p1 < ../../device/sony/pine/patches/frameworks/frameworks-av_016-fix-cannot-locate-symbol.patch
patch -p1 < ../../device/sony/pine/patches/frameworks/0009-add-mtk-color-format-support.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/sony/pine/patches/frameworks/base.patch
cd ../..
cd frameworks/native
patch -p1 < ../../device/sony/pine/patches/frameworks/native.patch
cd ../..
cd system/netd
patch -p1 < ../../device/sony/pine/patches/system/0004-system_netd.patch
cd ../..
cd system/core
patch -p1 < ../../device/sony/pine/patches/system/0001-for-pine.patch
cd ../..
cd frameworks/opt/telephony
patch -p1 < ../../../device/sony/pine/patches/frameworks/telephony.patch
cd ../../..
