#!/bin/bash

BASEDIR=$(pwd)

echo -e "
[Unit]
After=network.service

[Service]
ExecStart=${BASEDIR}/firewall start
ExecReload=${BASEDIR}/firewall restart

[Install]
WantedBy=default.target
" > /etc/systemd/system/simple-iptables.service

systemctl daemon-reload
systemctl start simple-iptables.service
systemctl enable simple-iptables.service
