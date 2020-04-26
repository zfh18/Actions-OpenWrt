#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.50.20/g' package/base-files/files/bin/config_generate
#Update Argon and modify default theme
cd package/lean
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
cd ..
cd ..
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/Bootstrap/Argon/g' feeds/luci/collections/luci/Makefile
#Build OpenClash
git clone https://github.com/vernesong/OpenClash.git package/OpenClash
# Build AdguardHome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/adguardhome
#Build SmartDNS
#git clone https://github.com/pymumu/smartdns.git package/smartdns
