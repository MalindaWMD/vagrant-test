# -*- mode: ruby -*-
# vi: set ft=ruby :
# 
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "forwarded_port", guest: 80, host: 8082
  config.vm.network "private_network", ip: "192.168.33.15"
  config.vm.synced_folder ".", "/var/www/html", :mount_options => ["dmode=777","fmode=776"]

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.cups = "2"
  end
  
  config.vm.provision "shell", path: "bootstrap.sh"
end
