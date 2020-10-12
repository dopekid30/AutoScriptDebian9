#!/bin/bash
# Created by https://www.facebook.com/joash.singh.90
# Script by Dope~kid

cd
sed -i '$ i\/usr/local/bin/openvpn_reboot_fix' /etc/rc.local
sed -i '$ i\/root/limit.sh' /etc/rc.local
sed -i '$ i\/root/ban.sh' /etc/rc.local
echo "0 0 * * * root /usr/local/bin/user-expire" > /etc/cron.d/user-expire
echo "0 0 * * * root /usr/local/bin/delete_expired_accounts" > /etc/cron.d/delete_expired_accounts
echo "0 0 * * * root /usr/local/bin/reset_server_limit" > /etc/cron.d/reset_server_limit

cat > /root/ban.sh <<END3
#!/bin/bash
/usr/local/bin/user-ban
END3

cat > /root/limit.sh <<END3
#!/bin/bash
/usr/local/bin/user-limit
END3

cd /usr/local/bin
wget -O premium-script.tar.gz "https://raw.githubusercontent.com/dopekid30/AutoScriptDebian9/main/Res/Menu/premium-script.tar.gz"
tar -xvf premium-script.tar.gz
rm -f premium-script.tar.gz

cp /usr/local/bin/premium-script /usr/local/bin/menu

chmod +x /usr/local/bin/trial
chmod +x /usr/local/bin/user-add
chmod +x /usr/local/bin/user-active
chmod +x /usr/local/bin/user-ban
chmod +x /usr/local/bin/user-delete
chmod +x /usr/local/bin/user-detail
chmod +x /usr/local/bin/user-expire
chmod +x /usr/local/bin/user-limit
chmod +x /usr/local/bin/user-lock
chmod +x /usr/local/bin/user-login
chmod +x /usr/local/bin/user-unban
chmod +x /usr/local/bin/user-unlock
chmod +x /usr/local/bin/user-password
chmod +x /usr/local/bin/user-log
chmod +x /usr/local/bin/bench-network
chmod +x /usr/local/bin/speedtest
chmod +x /usr/local/bin/ram
chmod +x /usr/local/bin/log-limit
chmod +x /usr/local/bin/log-ban
chmod +x /usr/local/bin/user-generate
chmod +x /usr/local/bin/user-list
chmod +x /usr/local/bin/diagnosis
chmod +x /usr/local/bin/premium-script
chmod +x /usr/local/bin/user-delete-expired
chmod +x /usr/local/bin/auto-reboot
chmod +x /usr/local/bin/simple-panel
chmod +x /usr/local/bin/delete_expired_accounts
chmod +x /usr/local/bin/reset_server_limit
chmod +x /usr/local/bin/openvpn_reboot_fix
chmod +x /usr/local/bin/log-install
chmod +x /usr/local/bin/menu
chmod +x /usr/local/bin/user-auto-limit
chmod +x /usr/local/bin/user-auto-limit-script
chmod +x /usr/local/bin/edit-port
chmod +x /usr/local/bin/edit-port-squid
chmod +x /usr/local/bin/edit-port-openvpn
chmod +x /usr/local/bin/edit-port-openssh
chmod +x /usr/local/bin/edit-port-dropbear
chmod +x /usr/local/bin/autokill
chmod +x /root/limit.sh
chmod +x /root/ban.sh
/root/limit.sh
/root/ban.sh
clear
cd
echo " "
echo " "
echo "PREMIUM SCRIPT SUCCESSFULLY INSTALLED!"
echo "SCRIPT BY DOPE~KID"
echo "PLEASE WAIT..."
echo " "
