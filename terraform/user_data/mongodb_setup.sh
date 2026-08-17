#!/bin/bash
# Create MongoDB repo file
cat <<EOT | sudo tee /etc/yum.repos.d/mongodb-org-7.0.repo
[mongodb-org-7.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2/mongodb-org/7.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-7.0.asc
EOT

# Install MongoDB
sudo yum install -y mongodb-org

# Configure MongoDB to listen on all IPs so the backend can connect
sudo sed -i 's/bindIp: 127.0.0.1/bindIp: 0.0.0.0/' /etc/mongod.conf

# Start and enable MongoDB
sudo systemctl start mongod
sudo systemctl enable mongod
