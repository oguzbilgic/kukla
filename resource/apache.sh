# Install and Configure Apache
apt-get install -y apache2

# Enable apache modules
a2enmod rewrite
a2enmod status

# Add default-vhost
mkdir -p /var/www/default
mv /var/www/index.html /var/www/default/index.html
cd /etc/apache2/sites-available
cat << EOF > /etc/apache2/sites-available/default 
<VirtualHost *:80>
    ServerName default-vhost

    DocumentRoot /var/www/default
    <Directory /var/www/default>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride None
        Order allow,deny
        allow from all
    </Directory>

    LogLevel warn
    ErrorLog /var/log/apache2/error.log
    CustomLog /var/log/apache2/access.log vhost_combined
</VirtualHost>
EOF
service apache2 reload