sudo apt-get udpdate

# Install apache2
sudo apt-get install -y apache2

# Enable Apache Mods
a2enmod rewrite

# Install mysql
sudo apt-get install -y mysql-server

# Set MySQL Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install php
sudo apt-get install software-properties-common python-software-properties

sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update

sudo apt-get install -y php7.2 php7.2-cli php7.2-common

sudo apt-get install -y php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-intl php7.2-mysql php7.2-xml php7.2-zip

# Change ini

# Setup vhost

# Restart Apache
sudo service apache2 restart