#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate
#git clone https://github.com/jerrykuku/openwrt-package package/one
#git clone https://github.com/kenzok8/openwrt-packages package/two
#git clone https://github.com/kenzok8/small package/small
#git clone https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
# Add luci-app-ssr-plus
pushd package/lean
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

# Add luci-app-adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome ../luci-app-adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/AdGuardHome ../AdGuardHome

# Add smartdns
svn co https://github.com/pymumu/smartdns/trunk/package/openwrt ../smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns ../luci-app-smartdns

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add clash
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-clash ../luci-app-clash

# Add aliddns
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-aliddns ../luci-app-aliddns

# Add theme
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-argon_new ../luci-theme-argon_new

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-atmaterial ../luci-theme-atmaterial

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-edge ../luci-theme-edge

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-ifit ../luci-theme-ifit

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-opentomato ../luci-theme-opentomato 

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-opentomcat ../luci-theme-opentomcat

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-opentopd ../luci-theme-opentopd


popd

pushd package/community/OpenClash/luci-app-openclash/tools/po2lmo
make && sudo make install
popd
