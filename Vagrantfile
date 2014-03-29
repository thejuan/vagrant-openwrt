# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "adam/openwrt-aa"
  config.vm.guest = "openwrt"
  config.ssh.shell = "ash" # bash is the default, openwrt uses ash
  config.ssh.private_key_path = "vagrant.private.key"
  config.vm.synced_folder ".", "/vagrant", :disabled => true # no guest additions of vmware tools. No sharing
  
  #You can configure networks here for the Virtuliser, however the plugin has not implemented it for OpenWRT yet.
  #You will need to edit /etc/config/network manually 
end