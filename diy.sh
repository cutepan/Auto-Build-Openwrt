#change opkg mirros
sed -i 's/openwrt.proxy.ustclug.org/op.hyird.xyz/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/https/R20.2.15/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/http/snapshots/g' package/lean/default-settings/files/zzz-default-settings

#delete default password
sed -i '34 d' package/lean/default-settings/files/zzz-default-settings

#add sonme additional packages
git clone https://github.com/rufengsuixing/luci-app-adguardhome         package/adg
git clone https://github.com/destan19/OpenAppFilter                     package/oaf
git clone https://github.com/Advanced-noob/luci-theme-atmaterial.git    package/atmaterial
git clone https://github.com/vernesong/OpenClash                        package/clash


cat << EOF >> target/linux/ipq40xx/config-4.14
CONFIG_PMBUS=n
CONFIG_SENSORS_PMBUS=n
CONFIG_SENSORS_ADM1275=n
CONFIG_SENSORS_IBM_CFFPS=n
CONFIG_SENSORS_IR35221=n
CONFIG_SENSORS_LM25066=n
CONFIG_SENSORS_LTC2978=n
CONFIG_SENSORS_LTC3815=n
CONFIG_SENSORS_MAX16064=n
CONFIG_SENSORS_MAX20751=n
CONFIG_SENSORS_MAX34440=n
CONFIG_SENSORS_MAX8688=n
CONFIG_SENSORS_TPS40422=n
CONFIG_SENSORS_TPS53679=n
CONFIG_SENSORS_UCD9000=n
CONFIG_SENSORS_UCD9000=n
CONFIG_SENSORS_UCD9200=n
CONFIG_NETWORK_FILESYSTEMS=y
CONFIG_NFS_FS=y
CONFIG_CIFS_ALLOW_INSECURE_LEGACY=y
CONFIG_CIFS_WEAK_PW_HASH=n
EOF

cat << EOF >> target/linux/x86/config-4.19
CONFIG_HSA_AMD=n
EOF

cat << EOF >> target/linux/ramips/mt7621/config-4.14
CONFIG_PMBUS=n
CONFIG_SENSORS_PMBUS=n
CONFIG_SENSORS_ADM1275=n
CONFIG_SENSORS_IBM_CFFPS=n
CONFIG_SENSORS_IR35221=n
CONFIG_SENSORS_LM25066=n
CONFIG_SENSORS_LTC2978=n
CONFIG_SENSORS_LTC3815=n
CONFIG_SENSORS_MAX16064=n
CONFIG_SENSORS_MAX20751=n
CONFIG_SENSORS_MAX34440=n
CONFIG_SENSORS_MAX8688=n
CONFIG_SENSORS_TPS40422=n
CONFIG_SENSORS_TPS53679=n
CONFIG_SENSORS_UCD9000=n
CONFIG_SENSORS_UCD9000=n
CONFIG_SENSORS_UCD9200=n
CONFIG_NETWORK_FILESYSTEMS=y
CONFIG_NFS_FS=y
CONFIG_CIFS_ALLOW_INSECURE_LEGACY=y
CONFIG_CIFS_WEAK_PW_HASH=n
CONFIG_DMA_JZ4780=n
EOF



