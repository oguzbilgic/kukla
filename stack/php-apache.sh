# Require
bash resource/apache.sh
bash resource/mysql-client.sh
bash resource/php.sh
bash resource/git.sh
bash resource/vim.sh

# Install php5 modules and bindings
apt-get install --yes php5-mysql libapache2-mod-php5
service apache2 reload

# Create /info.php file
echo "<?php phpinfo(); ?>" >> /var/www/default/info.php
