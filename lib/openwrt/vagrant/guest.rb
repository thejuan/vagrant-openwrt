require "vagrant"

module VagrantPlugins
  module GuestOpenWrt
    class Guest < Vagrant.plugin("2", :guest)
      def detect?(machine)
      	machine.communicate.test('opkg -version')
      end
    end
  end
end