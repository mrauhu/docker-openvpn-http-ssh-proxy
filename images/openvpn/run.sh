#!/usr/bin/env sh

printenv
echo "before ip route"
ip route
# so return traffic that went through VPN works
gw=$(ip route | awk '/default/ {print $3}')
echo $gw
#ip route add to $LOCAL_NETWORK via $gw dev eth0

ls -la

MERGED_CONFIG=merged.config.ovpn

cat <<EOF > $MERGED_CONFIG
script-security 2
up /etc/openvpn/up.sh
down /etc/openvpn/down.sh
EOF

cat "${OPENVPN_CONFIG_FILE}" >> $MERGED_CONFIG

openvpn --config "/opt/openvpn/${MERGED_CONFIG}"
