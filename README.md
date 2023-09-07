# reboot-rg
script for using telnet to access a WTI PDU to turn off power to an ATT Residential Gateway and then restore power after 30 seconds

I have a problem with my ATT Gigabit Residential Gateway. Every couple of months it goes wonky and stops working. This last time it turned on the guest portal and wanted all of my devices to log into it. I have my RG in passthrough mode and use a Unifi Dream Machine Pro and an all Unifi network. No user or device on my network should ever see the Residential Gateway. The solution was, yet another reboot.

I got tired of playing the game of waiting for the RG to do something weird until I diagnosed what was wrong with my network and then rebooting the RG so I took matters in my own hands.  

I have an old WTI networked PDU in my basement network rack (its only an 8U rack, don't think I have a full 42U rack in my basement!) that I can telnet into in order to turn on or off plugs/outlets.  This script uses expect to spawn a telnet session and inject the password and commands to turn off and then back on the outlet my RG is plugged into.  I use cron to execute this script every sunday at 3:30am.  So, every week my RG gets rebooted and hopefully this will keep it from going off on its own, blocking internet access or trying to charge my family for their internet use, though, that might not be a bad idea...  That will be another project.

Place the script called reboot-rg.sh in any directory you want.  I run a Fedora 38 server and put it in /opt.  Add a crontab line to /etc/crontab to execute this script when and how frequently you want and then let it fly. This script will create logs in /var/log called reboot-rg.log.  

Enjoy!
