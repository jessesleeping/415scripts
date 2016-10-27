# -*- mode: ruby -*-
# vi: set ft=ruby :

# Customize VM resources
VM_CPUS = "4"
VM_MEMORY = "2048" # MB
VM_NAME = "HW415"

Vagrant.configure(2) do |config|

  # Pick a box to use
  config.vm.box = "ubuntu/trusty64"

  # Config VM
  config.vm.provider :virtualbox do |vb|
  vb.customize [ "modifyvm", :id,
    "--memory", VM_MEMORY,
    "--name", VM_NAME,
    "--nicspeed1", 1000000,
    "--nicspeed2", 1000000,
    "--ioapic", "on",
    "--cpus", VM_CPUS ]
  end

  # Network
  config.vm.network "forwarded_port", guest: 8000, host: 15415, auto_correct: true

  # SSH
  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  # Setup environment
  config.vm.provision :shell, :inline => "apt-get update"
  config.vm.provision "shell", :path => "https://raw.githubusercontent.com/jessesleeping/415scripts/master/init.sh"
  config.vm.provision "shell", :path => "https://raw.githubusercontent.com/jessesleeping/415scripts/master/customize.sh", :privileged => false

end
