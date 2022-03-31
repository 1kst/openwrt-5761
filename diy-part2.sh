# 更改默认IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
# 删除原主题
#rm -rf package/lean/luci-theme-argon
rm -rf package/luci-theme-bootstrap
# 增加主题设置
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
# 去除默认主题：
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
# 设置默认主题为luci-theme-argon/
sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile
