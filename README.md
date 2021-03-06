#### setup
`ssh root@server`

`export LANGUAGE="en_US.UTF-8"`

`echo 'LANGUAGE="en_US.UTF-8"' >> /etc/default/locale`

`echo 'LC_ALL="en_US.UTF-8"' >> /etc/default/locale`

`adduser user_name`

`visudo`

`user_name ALL=(ALL:ALL) ALL`

`ssh-copy-id user_name@server`

`ssh user_name@server`

`sudo apt-get update`

`sudo apt-get -y install git nodejs nginx`

`sudo apt-get -y install libxslt-dev libxml2-dev libsqlite3-dev`

`sudo apt-get -y install postgresql postgresql-contrib libpq-dev`


#### postgres
`sudo -u postgres psql`

`CREATE DATABASE db_name;`

`CREATE USER test_user WITH password 'qwerty';`

`GRANT ALL privileges ON DATABASE db_name TO test_user;`

#### rvm
`curl -L https://get.rvm.io | bash -s`

`command curl -sSL https://rvm.io/mpapis.asc | gpg --import -`

`rvm get stable`

`rvm requirements`

#### ruby
`rvm install 2.3.0 --with-openssl-dir=$HOME/.rvm/usr`

#### rails
`rvm use 2.3.0@rails426 --create --default`

`vim ~/.gemrc`

`install: --no-rdoc --no-ri`

`update:  --no-rdoc --no-ri`

`gem install rails --version 4.2.6`

#### nginx
`sudo rm /etc/nginx/sites-enabled/default`

`sudo ln -nfs "/home/user_name/app_name/current/config/nginx/production.conf" "/etc/nginx/sites-enabled/app_name"`

`sudo service nginx restart`
