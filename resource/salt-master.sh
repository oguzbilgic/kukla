# Install saltstack/salt-master
aptitude -y install python-software-properties
add-apt-repository ppa:saltstack/salt
aptitude update
aptitude install salt-master -y
