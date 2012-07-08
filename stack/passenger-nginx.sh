# Require
bash resource/mysql-client.sh
bash resource/ruby.sh

# Install passenger dependencies
apt-get install -y build-essential libcurl4-openssl-dev libssl-dev zlib1g-dev

# Install passenger 
gem install passenger --no-ri --no-rdoc

# Install passenger-nginx module with nginx
passenger-install-nginx-module --auto --auto-download --prefix=/opt/nginx
