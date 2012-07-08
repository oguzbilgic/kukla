# Install and Configure Nginx
add-apt-repository ppa:nginx/stable
apt-get -y update
apt-get -y install nginx

# Use apache style directory structure
mkdir -p /var/www/default
mv /usr/share/nginx/www/* /var/www/default

# Add default-vhost
cat << EOF > /etc/nginx/sites-available/default 
server {
  listen 80 default;
  # server_name default-vhost;
  root /var/www/default;

  error_page 500 502 503 504 /50x.html;
}
EOF

# Start nginx
service nginx start
