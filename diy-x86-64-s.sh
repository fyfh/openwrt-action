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
# add ddns.to
#echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
#./scripts/feeds update nas
#./scripts/feeds install -a -p nas
# Add luci-app-ssr-plus
pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
popd

mkdir package/community
pushd package/community
# Add Lienol's Packages
# git clone --depth=1 https://github.com/Lienol/openwrt-package
# Add luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall
# add ddns.to
svn co https://github.com/linkease/nas-packages/trunk/luci/luci-app-ddnsto
svn co https://github.com/linkease/nas-packages/trunk/luci/luci-app-linkease
svn co https://github.com/linkease/nas-packages/trunk/network/services/ddnsto
svn co https://github.com/linkease/nas-packages/trunk/network/services/linkease

git clone --depth=1 https://github.com/jerrykuku/luci-app-jd-dailybonus

# ADD luci-app-fileassistant
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-fileassistant ../luci-app-fileassistant

# ADD luci-app-filebrowser
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-filebrowser ../luci-app-filebrowser

# ADD luci-app-syncthing
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-syncthing ../luci-app-syncthing
# add docker
#rm -rf ../lean/luci-app-docker
#git clone --depth=1 https://github.com/KFERMercer/luci-app-dockerman
#git clone --depth=1 https://github.com/lisaac/luci-lib-docker
# Add luci-app-vssr <M>
#git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
#git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr
# add luci-app-godproxy
git clone https://github.com/project-lede/luci-app-godproxy
# add luci-app-serverchan
git clone https://github.com/tty228/luci-app-serverchan
# Add luci-app-adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome ../luci-app-adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/AdGuardHome ../AdGuardHome

# Add smartdns
svn co https://github.com/pymumu/smartdns/trunk/package/openwrt ../smartdns
svn co https://github.com/pymumu/luci-app-smartdns/branches/lede ../luci-app-smartdns

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add clash
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-clash ../luci-app-clash
svn co https://github.com/frainzy1477/luci-app-clash/trunk/ ../luci-app-clash
# Add aliddns
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-aliddns ../luci-app-aliddns

# Add theme
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-argon_new ../luci-theme-argon_new

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-atmaterial ../luci-theme-atmaterial

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-edge ../luci-theme-edge

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-ifit ../luci-theme-ifit

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-opentomato ../luci-theme-opentomato 

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-opentomcat ../luci-theme-opentomcat

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-opentopd ../luci-theme-opentopd


popd

#pushd package/community/OpenClash/luci-app-openclash/tools/po2lmo
#make && sudo make install
#popd
