# Trojan Poseidon

[Trojan](http://github.com/trojan-gfw/trojan) for [VNetPanel](https://t.me/vnetpanel), [WHMCS](https://www.whmcs.com/), [SSPanel](https://github.com/Anankke/SSPanel-Uim) and Local config without panel.

To distinguish [Trojan-Poseidon](https://github.com/ColetteContreras/trojan-poseidon) from [Trojan](http://github.com/trojan-gfw/trojan), our service and distributions name will be **`trojanp`** instead of `trojan`.

### OUR MISSION

Let everyone rides his own trojan horse without pain!


| Panel | Progress | 
|-------|----------|
| [Local(without Panel)](/local) | 100% |
| VNetPanel | 80% |
| WHMCS | 70% |
| SSPanel | Under developing |


### Poseidonfile

`Poseidonfile` **MUST** begin with **a domain** of your trojan server and **a port** it serves on.

Comment is supported. A comment starts with a `#` notation.

```
line 1: domain.of.your.node:443
line M: # place your comment here
line N: DIRECTIVE param1 param2 ... paramN
```


#### Directives

##### tls

```

```

##### root
`root` specifies the root path of your static site

* *path* must be a directory

```
root path
```

##### mirror

**this directive will be ignored if your `root` directive is set**

`mirror` actually is a reverse proxy,
which you are allowed to mirror a website.

* *website* is a valid URL to proxy to ( for example: https://colettecontreras.github.io/t-rex-runner/ )

```
mirror website
```

##### bind

`bind` overrides the host to which the server should bind.

* *host* is the hostname (or IP address) to bind to

```
bind host
```


##### vnetpanel

```
# format: vnetpanel apiHost nodeID secretKey
vnetpanel https://www.vnetpanel.com NODE_ID SECRET_KEY
```

##### sspanel

```
# on the way
```

##### whmcs

```
whmcs https://your.whmcs.domain WEBAPI_TOKEN {
    interval 10                      # sync internal, unit second
    trafficRate 1.1                  # a float number, by which scales a node traffic
    nodeSpeedLimit 0                 # unit Mbps, zero means unlimited
    maxOnlineIPCount 0               # How many IP count can a user active at the same time, zero means unlimited
    userSpeedLimit 0                 # unit Mbps, zero means unlimited
}
```

##### local

```
local {
  passwords password1 password2 ... passwordN
}
```

### Docs

All documents will be presented in [our docs](https://colettecontreras.github.io/trojan-poseidon/). Please read it carefully before creating a new issue.

### Join us

[TG](https://t.me/trojan_poseidon)

### Acknowledgement

- [Trojan](https://github.com/trojan-gfw/trojan)
- [Trojan-Go](https://github.com/saito-mayumi/trojan-go)
- [SSPanel](https://github.com/Anankke/SSPanel-Uim)
- [VNetPanel](https://t.me/vnetpanel)
- [WHMCS](https://www.whmcs.com/)
