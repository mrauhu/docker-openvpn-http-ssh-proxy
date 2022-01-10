# Docker compose OpenVPN client with HTTP and SSH proxy

## Setup

1. Clone repository:

```
git clone https://github.com/mrauhu/docker-openvpn-http-ssh-proxy
```

```
cd docker-openvpn-http-ssh-proxy
```

2. Create the `config/` directory:

```
mkdir -p config
```

3. Copy your OpenVPN client config with certificates to the `config/` directory.

4. Create the `.env.local` file and set values:

```shell
OPENVPN_USERNAME=
OPENVPN_PASSWORD=
# Comma separated list, like: `a.example.com,b.example.com,*.internal.example.com`
OPENVPN_TUNNEL_HOSTS=
# Name of config file, like: `config.ovpn`
OPENVPN_CONFIG_FILE=
```

5. Use the `http://127.0.0.1:8081` address:

  * macOS

      In _System Preferences — Network — Proxies — Automatic Proxy Configuration protocol_ as _Proxy Configuration File URL_.

  * Windows
    
    In _Settings — Network & Internet — Proxy_ as _Script address_.
    
    And set:

    * _Automatically detect settings_;
    * _Use script setup_.

## Usage

### Start in background

```
docker-compose up -d
```

### Down

```
docker-compose down -v
```

