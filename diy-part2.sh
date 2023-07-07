#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default static IP
#sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# Modify default hostname
#sed -i 's/OpenWrt/AX18USB/g' package/base-files/files/bin/config_generate

# 科学上网插件
git clone --depth=1 https://github.com/fw876/helloworld package/luci-app-ssr-plus
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
svn export https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall package/luci-app-passwall
svn export https://github.com/xiaorouji/openwrt-passwall2/trunk/luci-app-passwall2 package/luci-app-passwall2
svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
