#!/bin/sh

sudo apt-get update
sudo apt-get -y install samba

sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.old

# Allow windows
sudo sed -i -e 's/#   wins support = no/    wins support = yes/g' /etc/samba/smb.conf

# Create share
share_path=/var/samba/public_share/
sudo mkdir /var/samba/
sudo mkdir $share_path -p
sudo chmod 777 $share_path

# Share it
smb_conf=/etc/samba/smb.conf
sudo echo '[Public]' >> $smb_conf
sudo echo "    path = $share_path" >> $smb_conf
sudo echo '    comment = Public share' >> $smb_conf
sudo echo '    security = SHARE' >> $smb_conf
sudo echo '    guest ok = yes' >> $smb_conf
sudo echo '    browseable = yes' >> $smb_conf
sudo echo '    read only = no' >> $smb_conf
sudo echo '    writable = yes' >> $smb_conf
sudo echo '    create mask = 0777' >> $smb_conf
sudo echo '    directory mask = 0777' >> $smb_conf


