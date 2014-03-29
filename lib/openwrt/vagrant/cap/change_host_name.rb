module VagrantPlugins
  module GuestOpenWrt
    module Cap
      class ChangeHostName
        def self.change_host_name(machine, name)
          machine.ui.warn("hostname change not implemented in OpenWrt guest")
        end
      end
    end
  end
end