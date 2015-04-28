# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "official_ubuntu_precise64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.network "private_network", type: "dhcp"
  #the ports below need to be changed to something unique
  #no other Vagrantfile should be using the same ports
  config.vm.network "forwarded_port", guest: 80, host: 8099
  config.vm.network "forwarded_port", guest: 22, host: 2099
  config.vm.synced_folder ".", "/vagrant", create: true, :mount_options => ['dmode=777,fmode=666']

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "puppet/modules"
  end
end
