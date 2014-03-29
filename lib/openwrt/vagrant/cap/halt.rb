module VagrantPlugins
  module GuestOpenWrt
    module Cap
      class Halt
        def self.halt(machine)
          begin
            machine.communicate.execute("sudo poweroff")
          rescue IOError
            # Ignore, this probably means connection closed because it
            # shut down.
          end
        end
      end
    end
  end
end