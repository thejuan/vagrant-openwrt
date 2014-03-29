begin 
 require 'vagrant'
rescue LoadError
 raise 'The Vagrant Guest openwrt plugin must be run within vagrant'
end

require_relative 'vagrant/plugin'