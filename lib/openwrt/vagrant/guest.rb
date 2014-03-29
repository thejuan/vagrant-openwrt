require "vagrant"

module VagrantPlugins
  module Guestopenwrt
    class Guest < Vagrant.plugin("2", :guest)
      def detect?(machine)
      	machine.communicate.test('uname -s | grep openwrt')
      end
    end
  end
end