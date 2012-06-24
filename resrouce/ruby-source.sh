# Compile and Install ruby from source
apt-get -y install build-essential zlib1g-dev libssl-dev libyaml-dev

# Download ruby
cd /tmp
wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p194.tar.gz
tar -xvzf ruby-1.9.3-p194.tar.gz
cd ruby-1.9.3-p194/

# Compile ruby
./configure
make

# Install ruby
sudo make install
