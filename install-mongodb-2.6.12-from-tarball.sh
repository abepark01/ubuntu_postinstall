#!/usr/bin/env bash
# run this script from your home folder
# sudo bash
HOME="/home/$SUDO_USER"

VERSION=mongodb-linux-x86_64-2.6.12
FILE="$VERSION.tgz"
cd $HOME
curl -O "http://downloads.mongodb.org/linux/$FILE"

tar -zxvf $FILE
cp "$VERSION/bin/*" /usr/local/bin
rm -fr "$HOME/$VERSION"
rm -fr "$HOME/$FILE"
groupadd mongodb
useradd --system --no-create-home -g mongodb mongodb

mkdir -p /var/log/mongodb
touch /var/log/mongodb/mongodb.log

mkdir -p /var/lib/mongodb/

chown mongodb:mongodb -R /var/lib/mongodb
chown mongodb:mongodb -R /var/log/mongodb

cat > /etc/mongod.conf <<EOF
dbpath=/var/lib/mongodb
logpath=/var/log/mongodb/mongodb.log
logappend=true
EOF

cat > /etc/systemd/system/mongodb.service <<EOF
[Unit]
Description=High-performance, schema-free document-oriented database
After=network.target

[Service]
User=mongodb
ExecStart=/usr/local/bin/mongod --config /etc/mongod.conf

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable mongodb.service
systemctl restart mongodb.service
systemctl status mongodb.service

chown $SUDO_USER:$SUDO_USER "/home/$SUDO_USER/.mongorc"
