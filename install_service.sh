#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

sudo cp hydro@.* /etc/systemd/system/
sudo systemctl daemon-reload 
sudo systemctl enable hydro@$USER.service
sudo systemctl enable hydro@$USER.timer
sudo systemctl start  hydro@$USER.timer
sudo systemctl status hydro@$USER.timer 
sudo systemctl status hydro@$USER.service 
