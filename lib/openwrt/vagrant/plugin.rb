module VagrantPlugins
  module GuestOpenWrt
    class Plugin < Vagrant.plugin("2")
      name "OpenWrt Guest."
      description "OpenWrt support."

      guest("openwrt", "linux")  do
        require File.expand_path("../guest", __FILE__)
        Guest
      end

      guest_capability("openwrt", "change_host_name") do
        require_relative "cap/change_host_name"
        Cap::ChangeHostName
      end

      guest_capability("openwrt", "halt") do
        require_relative "cap/halt"
        Cap::Halt
      end

      guest_capability("openwrt", "configure_networks") do
        require_relative "cap/configure_networks"
        Cap::ConfigureNetworks
      end
    end
  end
end