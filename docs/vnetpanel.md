# Trojan for VNetPanel

### Requirements
- A domain for Trojan node to serve TLS certs
- New version of VNetPanel which supports Trojan

### Install

```shell
(yum install curl 2> /dev/null || apt install curl 2> /dev/null) \
  && curl -L -s https://bit.ly/33UdELu \
  | WEB_API="https://your.vnetpanel.domain" \
    NODE_ID=YOUR_NODE_ID \
    NODE_KEY=THE_COMMUNICATION_KEY \
    NODE_HOST=HOST_FOR_CURRENT_NODE \
  bash
```

### Config

```shell
vim /root/trojan_poseidon/Poseidonfile
```

### Start

```shell
systemctl start trojan_poseidon
```

### Stop

```shell
systemctl stop trojan_poseidon
```

### Status

```shell
systemctl status trojan_poseidon
```

### Logs

```shell
journalctl -x -n 300 --no-pager -u trojan_poseidon
```

### Update

```shell
curl -L -s https://bit.ly/33UdELu | bash
```

### Uninstall

Configs and logs **are preserved**

```shell
curl -L -s https://bit.ly/2Jl9bs7 | bash
```

