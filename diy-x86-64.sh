#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate
echo "src-git jerryk https://github.com/jerrykuku/openwrt-package
src-git kenzo https://github.com/kenzok8/openwrt-packages
src-git lienol https://github.com/Lienol/openwrt-package.git;main" >> feeds.conf.default
