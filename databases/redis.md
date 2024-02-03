### Redis install

# Prerequisites
* sudo apt install lsb-release curl gpg

# Install
* curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
* echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list
* sudo apt-get update
* sudo apt-get install redis

* sudo systemctl status redis-server
* sudo systemctl start redis-server
* sudo systemctl unmask redis-server

* redis-cli

# Ubuntu rolling updates
* sudo vim /etc/redis/redis.conf
* Update supervised to `systemd`
* sudo systemctl restart redis-server


