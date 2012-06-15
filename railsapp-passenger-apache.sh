# Require
bash passenger-apache.sh

# Install rails
gem install rails --no-ri --no-rdoc

# Deploy demo rails app
cd /var/www
rails new demo
cd demo
sed -i "s/# gem 'therubyracer'/gem 'therubyracer'/" /var/www/demo/Gemfile
bundle install
rake db:migrate
a2dissite default
touch /etc/apache2/sites-available/demo
cat << EOF > /etc/apache2/sites-available/demo 
<VirtualHost *:80>
    RackEnv development

    DocumentRoot /var/www/demo/public
    <Directory /var/www/demo/public>
        AllowOverride None
        Options -MultiViews
    </Directory>
</VirtualHost>
EOF
a2ensite demo
service apache2 restart