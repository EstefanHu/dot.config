### POSTGRES CONFIG

## Install

# server setup
* sudo apt install wget ca-certificates
* wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
* sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

# install
* sudo apt update
* sudo apt install postgresql postgresql-contrib
* service postgresql status

# config
* sudo -u postgres psql

In psql client
* CREATE ROLE e LOGIN SUPERUSER
* CREATE TABLE e

Configure `pg_hba.conf`
* in psql run `show hba-file`
* update `pg_hba.conf` local all posgres peer => local all postgres trust
* sudo systemctl restart postgresql || sudo service postgresql restart

# psql commands
* psql -h [id address] -p [port] -d [database] -U [username]
* sudo -u e psql
* \conninfo

## Postgres 16
sudo apt update
sudo apt install gnupg2 wget vim
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/postgresql.gpg
sudo apt update

sudo apt install postgresql-16 postgresql-contrib-16
sudo systemctl start postgresql
sudo systemctl enable postgresql
psql --version

sudo vim /etc/postgresql/16/main/postgresql.conf
listen_addresses = '*'

# PGADMIN connetion
sudo sed -i '/^host/s/ident/md5/' /etc/postgresql/16/main/pg_hba.conf
sudo sed -i '/^local/s/peer/trust/' /etc/postgresql/16/main/pg_hba.conf
echo "host all all 0.0.0.0/0 md5" | sudo tee -a /etc/postgresql/16/main/pg_hba.conf
sudo systemctl restart postgresql
sudo ufw allow 5432/tcp

