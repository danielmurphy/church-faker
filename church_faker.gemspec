# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'church_faker/version'

Gem::Specification.new do |spec|
  spec.name          = "church_faker"
  spec.version       = ChurchFaker::VERSION
  spec.authors       = ["Daniel Murphy"]
  spec.email         = ["danielmurphy02@gmail.com"]
  spec.summary       = "Generates fake church names"
  spec.description   = "An addon to Faker to generate fake church names"
  spec.homepage      = "https://github.com/danielmurphy/church-faker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency 'ffaker'
end
