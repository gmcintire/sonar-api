# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sonar/api/version'

Gem::Specification.new do |spec|
  spec.name          = "sonar-api"
  spec.version       = Sonar::Api::VERSION
  spec.authors       = ["Graham McIntire"]
  spec.email         = ["gmcintire@gmail.com"]

  spec.summary       = %q{API Client for https://sonar.software/}
  spec.homepage      = "https://github.com/gmcintire/sonar-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "httparty", "~> 0.13.7"
end
