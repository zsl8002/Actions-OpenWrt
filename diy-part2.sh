#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
# Add Passwall2
#!/bin/bash
# 这里是 diy-part2.sh：在 package/ 目录下拉取插件

# 定义插件目录
PKG_DIR="package/community"

# 创建目录
mkdir -p $PKG_DIR

# 1. OpenClash (预编译版更稳)
git clone --depth 1 https://github.com/vernesong/OpenClash.git $PKG_DIR/openclash

# 2. Passwall2 (全能科学上网)
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git $PKG_DIR/passwall2

# 3. MosDNS + SmartDNS (广告拦截与DNS加速)
git clone --depth 1 https://github.com/sbwml/luci-app-mosdns.git $PKG_DIR/mosdns
git clone --depth 1 https://github.com/pymumu/luci-app-smartdns.git $PKG_DIR/smartdns

# 4. AdGuard Home (广告拦截)
git clone --depth 1 https://github.com/rufengsuixing/luci-app-adguardhome.git $PKG_DIR/adguardhome

# 5. Argon 主题
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git $PKG_DIR/argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config.git $PKG_DIR/argon-config

# 清理缓存
rm -rf tmp/
exit 0
