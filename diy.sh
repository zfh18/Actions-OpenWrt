#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.50.20/g' package/base-files/files/bin/config_generate
#Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/Bootstrap/Argon/g' feeds/luci/collections/luci/Makefile
#Build OpenClash
git clone https://github.com/vernesong/OpenClash.git package/OpenClash
