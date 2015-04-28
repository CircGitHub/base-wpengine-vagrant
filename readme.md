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

## Vagrant Share

If you have a [Vagrant Cloud](https://vagrantcloud.com/) account and you want to generate a share url you must enter the
following commands:

    vagrant login
    vagrant share

After the login command it will ask for your username and password. Then you can enter the second command to get your
share url. You can use control-C to exit the share session.

There are a few lines in the wp-config.php file that you may need to uncomment while people are accessing the site
through a vagrant share url. This would be lines 18-20. This is necessary because Wordpress is stupid.

##MySQL

###Access with GUI Client

If you are using Sequel Pro or some other MySQL gui client and you want to access the DB you will need to configure it
to connect over SSH and use the following settings:

* MySQL Host: 127.0.0.1
* MySQL user: root
* MySQL Password: NONE (leave blank)
* MySQL Database: wordpress

* SSH Host: localhost
* SSH User: vagrant
* SSH Key: .vagrant/machines/default/virtualbox/private_key -- this is inside your project root
* SSH Port: 2222

You should use the default MySQL Port which means that you should be able to leave this field blank.

###Loading DB during vagrant setup

If you save a sql file named dump.sql into puppet/modules/mysql/files that sql file will be loaded into the DB during
the initial provisioning. This will only happen the first time you run vagrant up. This might be useful if you already
have a DB or if you need to use a different computer but you want an existing DB loaded.

This file will be ignored by git so it cannot be committed.