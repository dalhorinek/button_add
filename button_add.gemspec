# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'button_add/version'

Gem::Specification.new do |spec|
  spec.name          = "button_add"
  spec.version       = ButtonAdd::VERSION
  spec.authors       = ["Dalibor Horinek"]
  spec.email         = ["dal@horinek.net"]
  spec.description   = %q{Adds helper for dynamic add button as shown at RailsCasts episode 403 dynamic forms}
  spec.summary       = %q{Adds helper for dynamic add button as shown at RailsCasts episode 403 dynamic forms}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
