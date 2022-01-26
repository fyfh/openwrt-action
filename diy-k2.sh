#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i '/routing/d' feeds.conf.default
echo "src-git routing https://git.openwrt.org/feed/routing.git^a7b79a1d4fce4f443854115ee4b2ed2aafba5c06" >> feeds.conf.default
