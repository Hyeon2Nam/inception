sudo apt-get update

sudo apt-get install -y docker.io

sudo chmod 666 /var/run/docker.sock

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo su -c 'printf "{\n\t\"live-restore\": true\n}" > /etc/docker/docker.json'

sudo systemctl restart docker

sudo echo "127.0.0.1 hyenam.42.fr" >> /etc/hosts

