module VagrantPlugins
  module GuestOpenWrt
    module Cap
      class ChangeHostName
        def self.change_host_name(machine, name)
          begin
            machine.communicate.execute("sudo uci set system.@system[0].hostname=\"#{name}\"")
            machine.communicate.execute("sudo uci commit")
          rescue IOError
            # Ignore, this probably means connection closed because it
            # shut down.
          end
        end
      end
    end
  end
end