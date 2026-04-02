#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#!/bin/bash
# 这里是 diy-part1.sh：修改 feeds.conf.default

# 替换默认的 LuCI 源为 ImmortalWrt 最新版
sed -i 's/^#\(.*luci\)/\1/' feeds.conf.default
sed -i 's|https://github.com/openwrt/luci.git|https://github.com/immortalwrt/luci.git|g' feeds.conf.default

# 替换 packages 源为 ImmortalWrt 源（解决依赖问题）
sed -i 's|https://github.com/openwrt/packages.git|https://github.com/immortalwrt/packages.git|g' feeds.conf.default

# 如果需要添加其他 feeds，例如 helloworld 备用源
# echo "src-git helloworld https://github.com/fw876/helloworld.git" >> feeds.conf.default

exit 0
