apt install wget -y
wget https://repo.zabbix.com/zabbix/7.0/debian/pool/main/z/zabbix-release/zabbix-release_latest_7.0+debian12_all.deb
dpkg -i zabbix-release_latest_7.0+debian12_all.deb
apt update
apt install zabbix-agent2 -y 
apt install zabbix-agent2-plugin-mongodb zabbix-agent2-plugin-mssql zabbix-agent2-plugin-postgresql -y
systemctl restart zabbix-agent2
systemctl enable zabbix-agent2
sed -e "s/127.0.0.1/192.168.1.15/g" /etc/zabbix/zabbix_agent2.conf
systemctl restart zabbix-agent2
