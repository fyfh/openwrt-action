#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate
#git clone https://github.com/jerrykuku/openwrt-package package/one
#git clone https://github.com/kenzok8/openwrt-packages package/two
#git clone https://github.com/kenzok8/small package/small
#git clone https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
# Add luci-app-ssr-plus
pushd package
git clone --depth=1 https://github.com/fw876/helloworld
popd

mkdir package/community
pushd package/community
# Add Lienol's Packages
git clone --depth=1 https://github.com/Lienol/openwrt-package
# Add luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall

git clone --depth=1 https://github.com/jerrykuku/luci-app-jd-dailybonus

# Add luci-app-vssr <M>
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr



popd
