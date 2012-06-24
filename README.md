# bashhet

very minimalist server provisioning tool

## Usage

You can use the script below to download the project into your freshly created server's `/tmp` folder.

```shell
wget https://github.com/oguzbilgic/basshet/tarball/master -O basshet.tar.gz
tar -xvf bashhet.tar.gz
cd gis*
```

Then run the script that you want to install

```shell
bash railsapp-passenger-apache.sh
```

## Concept 

Every script/file sets up one layer of the server stack. We use file names to keep track of the dependencies. For example;

```
railsapp-passenger-apache -> passenger-apache -> apache
```

## Types

### Resource

Single server resource or configuration. These scripts can be run independently or within a resource stack.

### Resource Stack

Collection of resources that defines a complet stack.

## Platform

basshet scripts are currently developed and tested on *Ubuntu 12.04*
