#!/usr/bin/expect

set timeout 5

log_file /var/log/reboot-rg.log

spawn telnet 192.168.2.21

# TELNET TO WTI PDU
expect "Password: "
send "<your password here or pull from an environment variable>\r"
sleep 1

# TURN OFF PLUG 6
expect "IPS> "
send "/Off 6\r"
expect "(Y/N): "
send "Y\r"
sleep 30

# TURN ON PLUG 6
expect "IPS> "
send "/On 6\r"
expect "(Y/N): "
send "y\r"
sleep 1

log_file

# LOG OFF
expect "IPS> "
send "/X\r"
expect "(Y/N): "
send "y\r"
