#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
echo 'src-git dockerman https://github.com/lisaac/luci-app-dockerman' >> feeds.conf.default
echo 'src-svn dockerd https://github.com/openwrt/packages/trunk/utils/dockerd' >> feeds.conf.default
