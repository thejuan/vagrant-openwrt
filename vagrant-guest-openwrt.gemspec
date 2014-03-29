# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'openwrt/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-guest-openwrt"
  spec.version       = VagrantOpenWrt::Version::STRING
  spec.authors       = ["Adam Mills"]
  spec.email         = ["sales@chambills.com"]
  spec.summary       = %q{A vagrant plugin for OpenWrt guests.}
  spec.homepage      = "http://github.com/thejuan/vagrant-openwrt"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(openwrt|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
