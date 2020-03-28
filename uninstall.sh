#!/bin/bash

set -x

systemctl stop trojan_poseidon
systemctl disable trojan_poseidon

service trojan_poseidon stop
update-rc.d -f trojan_poseidon remove

rm -rf /root/trojan_poseidon/trojan_poseidon /etc/systemd/system/trojan_poseidon.service
set -

echo "Logs and configurations are preserved, you can remove these manually"
