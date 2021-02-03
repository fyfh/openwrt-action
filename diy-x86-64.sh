#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate
git clone --depth=1 https://github.com/jerrykuku/openwrt-package package/one
git clone --depth=1 https://github.com/kenzok8/openwrt-packages package/two
git clone --depth=1 https://github.com/kenzok8/small package/small
