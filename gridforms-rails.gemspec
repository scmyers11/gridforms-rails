# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gridforms-rails/version"

Gem::Specification.new do |spec|
  spec.name          = "gridforms-rails"
  spec.version       = Gridforms::Rails::VERSION
  spec.authors       = ["Stephen Myers"]
  spec.email         = ["scmyers11@gmail.com"]

  spec.summary       = "Rails wrapper for the gridforms jquery library"
  spec.description   = "Rails wrapper for the gridforms jquery library. Original library found https://github.com/kumailht/gridforms"
  spec.homepage      = "https://github.com/scmyers11/gridforms-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  gem.add_dependency "railties", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
