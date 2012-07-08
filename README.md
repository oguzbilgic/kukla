# kukla

very minimalist server managment tool

## Concept

### Resource

Single server resource or configuration. These scripts can be run independently or within a resource stack.

### Stack

Collection of resources that defines a complete stack.

### Script

Scripts that are designed to run on their specified stacks.

## Usage

You can use the script below to download the project into your freshly created server's `/tmp` folder.

```shell
wget https://github.com/oguzbilgic/kukla/tarball/master -O kukla.tar.gz
tar -xvf kukla.tar.gz
cd gis*
```

Then run the resource/stack/script that you want to use:

```shell
bash stack/passenger-apache.sh
```

## Platform

basshet is currently developed for and tested on *Ubuntu 12.04*
