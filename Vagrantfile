# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "lmcgrath/openwrt-aa"
  config.ssh.shell = "ash" # bash is the default, openwrt uses ash
  config.vm.synced_folder ".", "/vagrant", :disabled => true # no guest additions of vmware tools. No sharing
end