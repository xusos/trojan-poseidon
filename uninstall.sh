#!/bin/bash

set -x

systemctl stop trojanp
systemctl disable trojanp

service trojanp stop
update-rc.d -f trojanp remove

rm -rf /root/trojanp/trojanp /etc/systemd/system/trojanp.service
set -

echo "Logs and configurations are preserved, you can remove these manually"
