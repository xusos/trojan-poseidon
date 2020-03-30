# Trojan for Local without panel

### Requirements
- A domain for Trojan node to serve TLS certs

### Install

```shell
(yum install curl 2> /dev/null || apt install curl 2> /dev/null) \
  && curl -L -s https://bit.ly/33YkHCV | bash
```

### Config

```shell
vim /root/trojanp/Poseidonfile
```

#### Test config

```shell
cd /root/trojanp
./trojanp -t
```

### Start

```shell
systemctl start trojanp
```

### Stop

```shell
systemctl stop trojanp
```

### Status

```shell
systemctl status trojanp
```

### Logs

```shell
journalctl -x -n 300 --no-pager -u trojanp
```

### Update

```shell
curl -L -s https://bit.ly/33YkHCV | bash
```

### Uninstall

Configs and logs **are preserved**

```shell
curl -L -s https://bit.ly/2Jl9bs7 | bash
```

