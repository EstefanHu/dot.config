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

