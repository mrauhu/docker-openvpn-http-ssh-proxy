#!/usr/bin/env sh

# Enable compatability layer with Alpine
MERGED_CONFIG_FILE=merged.config.ovpn

cat <<EOF > $MERGED_CONFIG_FILE
script-security 2
up /etc/openvpn/up.sh
down /etc/openvpn/down.sh
EOF

cat "${OPENVPN_CONFIG_FILE}" >> $MERGED_CONFIG_FILE

# Auth using username and password
VPN_AUTH_FILE=vpn.auth
# Create credentials file
cat <<EOF > $VPN_AUTH_FILE
${OPENVPN_USERNAME}
${OPENVPN_PASSWORD}
EOF

# Add `auth-user-pass $VPN_AUTH_FILE` to the merged config
if grep -q auth-user-pass $MERGED_CONFIG_FILE; then
  # if has string started with `auth-user-pass`
  sed -i "s/^auth-user-pass.*/auth-user-pass ${VPN_AUTH_FILE}/" $MERGED_CONFIG_FILE
elif [ -n "${OPENVPN_USERNAME}" ]; then
   # If not empty username
  echo "auth-user-pass ${VPN_AUTH_FILE}" >> $MERGED_CONFIG_FILE
fi

openvpn --config "/opt/openvpn/${MERGED_CONFIG_FILE}"
