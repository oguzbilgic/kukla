# Require
bash resource/bashrc.sh
bash resource/apache.sh
bash resource/mysql-client.sh
bash resource/ruby.sh
bash resource/git.sh
bash resource/vim.sh

# Install passenger and enable passenger-apache module
apt-get install -y build-essential libcurl4-openssl-dev libssl-dev zlib1g-dev apache2-prefork-dev libapr1-dev libaprutil1-dev
gem install passenger --no-ri --no-rdoc
passenger-install-apache2-module -a
passenger-install-apache2-module --snippet | tee /etc/apache2/httpd.conf
