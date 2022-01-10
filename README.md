# Docker compose OpenVPN client with HTTP and SSH proxy

> Provides a [Proxy Auto-Configuration][pac] script URL for easy setup.

[pac]: https://en.wikipedia.org/wiki/Proxy_auto-config

## Prerequisites

- [Git][g];
- [Docker Desktop][d].

[g]: https://git-scm.com/
[d]: https://www.docker.com/products/docker-desktop


## Setup

1. Clone repository:

    ```
    git clone https://github.com/mrauhu/docker-openvpn-http-ssh-proxy
    ```
    
    ```
    cd docker-openvpn-http-ssh-proxy
    ```

2. Copy your OpenVPN client config with certificates to the `config/` directory.

3. Create the `.env` file and set values:

    ```shell
    OPENVPN_USERNAME=
    OPENVPN_PASSWORD=
    # Comma separated list, like: `a.example.com,b.example.com,*.internal.example.com`
    OPENVPN_TUNNEL_HOSTS=
    # Name of config file, like: `config.ovpn`
    OPENVPN_CONFIG_FILE=
    ```

    Optionally, you can change values:

    ```shell
    OPENVPN_HOST=127.0.0.1
    OPENVPN_PROXY_AUTO_CONFIGURATION_PORT=8081
    OPENVPN_PROXY_HTTP_PORT=8080
    OPENVPN_PROXY_SSH_PORT=2222
    ```

5. Use the Proxy Auth-Configuration (PAC) script URL:

    ```
    http://127.0.0.1:8081
    ```
    
    > The URL based on pattern built from environment variables:    
    >
    > ```
    > http://${OPENVPN_HOST}:${OPENVPN_PROXY_AUTO_CONFIGURATION_PORT}
    > ```
  
    For:

   * macOS
  
     In _System Preferences — Network — Proxies — Automatic Proxy Configuration protocol_:
     * set _Proxy Configuration File URL_.

   * Windows

     In _Settings — Network & Internet — Proxy_:
     
     * check:
       * _Automatically detect settings_;
       * _Use script setup_;
     * set _Script address_.

## Usage

### Start in background

```
docker-compose up -d
```

### Stop and remove containers

```
docker-compose down
```

### Update and rebuild images

```
git pull --ff-only && docker-compose build
```

## License

Apache 2.0

© Sergey N
