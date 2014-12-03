#WP Engine Base Vagrant setup

This repository is meant to be used to set up a dev environment for a WP Engine Wordpress site.

##Requirements

You must have the following installed:

* Virtual Box: https://www.virtualbox.org/wiki/Downloads
* Vagrant: https://www.vagrantup.com/downloads.html

It is also a good idea to create an account at [Vagrant Cloud](https://vagrantcloud.com/). This will allow you to
generate a url that you can give people so that they can access your virtual machine from their web browser.

##Instructions

Use the following command to start up your virtual machine:

    vagrant up

Use the following command to shut down your virtual machine:

    vagrant halt

Use the following command to put your virtual machine to sleep:

    vagrant suspend

Use the following command to wake your virtual machine from sleep:

    vagrant resume

If you are having issues with your virtual machine and you need to restart it be sure to use vagrant halt/up, not
vagrant suspend/resume.

Use the following command to ssh into your virtual machine:

    vagrant ssh

If you have a [Vagrant Cloud](https://vagrantcloud.com/) account and you want to generate a share url you must enter the
following commands:

    vagrant login
    vagrant share

After the login command it will ask for your username and password. Then you can enter the second command to get your
share url. You can use control-C to exit the share session.

##Permissions

In case you ever start having permissions issues you can ssh into the virtual machine and issue the following command:

    sudo ./permissions.sh

This will make sure that the wp-content directory and all of its contents (including subdirectories and their contents)
will be readable and writable by all users. This script must be run as root which is why the snippet above includes sudo.

##MySQL Access

If you are using Sequel Pro or some other MySQL gui client and you want to access the DB you will need to configure it
to connect over SSH and use the following settings:

* MySQL Host: 127.0.0.1
* MySQL user: root
* MySQL Password: NONE (leave blank)
* MySQL Database: wordpress

* SSH Host: localhost
* SSH User: vagrant
* SSH Key: ~/.vagrant.d/insecure_private_key
* SSH Port: 2222

You should use the default MySQL Port which means that you should be able to leave this field blank.