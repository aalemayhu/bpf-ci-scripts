# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "scanf/bpf-base"
  config.vm.box_version = "2"
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
  end
  config.vm.boot_timeout = 5400
  config.vm.synced_folder '.', '/home/vagrant/workspace', type: "rsync"
  config.vm.provision :shell, :privileged => false, :path => "workspace/scripts/1_compile_kernel.sh"
  config.vm.provision :reload
end
