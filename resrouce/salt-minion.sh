# Install saltstack/salt-minion
aptitude -y install python-software-properties
add-apt-repository ppa:saltstack/salt
aptitude update
aptitude install salt-minion -y

# Set salt-master location
cp /etc/salt/minion.template /etc/salt/minion
sed -e 's/#master: salt/master: 10.0.0.1/' /etc/salt/minion

# Start salt-minion
salt-minion -d
