# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spielplan_saar/version'

Gem::Specification.new do |gem|
  gem.name          = "spielplan_saar"
  gem.version       = SpielplanSaar::VERSION
  gem.authors       = ["Robert Gogolok"]
  gem.email         = ["gogolok@gmail.com"]
  gem.description   = %q{Handball Spielplan Saar Parser}
  gem.summary       = %q{Handball Spielplan Saar Parser}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency(%q<rspec>,[">= 2.11.0"])
  gem.add_development_dependency(%q<simplecov>,[">= 0.6.4"])
  gem.add_development_dependency(%q<rake>, [">= 0.9.2.2"])

  gem.add_dependency(%q<nokogiri>, [">= 1.5.5"])
end
