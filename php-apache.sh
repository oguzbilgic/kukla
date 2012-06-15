# Require
bash resource/apache.sh
bash resource/mysql-client.sh

# Install php5 and modules
apt-get install --yes php5 php5-mysql libapache2-mod-php5
service apache2 reload

# Create /info.php file
echo "<?php phpinfo(); ?>" >> /var/www/default/info.php
