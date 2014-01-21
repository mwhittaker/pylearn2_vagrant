# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # BOX
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # X11
  config.ssh.forward_x11 = true

  # PUPPET
  config.vm.provision :puppet do |puppet|
    puppet.module_path = "modules"
  end
  
  # SHELL
  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.provision "shell", path: "setup-ipython.sh"
  config.vm.provision "shell", path: "setup-datasets.sh"
  
end
