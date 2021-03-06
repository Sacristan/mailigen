# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mailigen/version'

Gem::Specification.new do |spec|
  spec.name          = "mailigen"
  spec.version       = Mailigen::VERSION
  spec.authors       = ["Arturs Braucs"]
  spec.email         = ["arturs@creo.mobi"]
  spec.description   = %q{Mailigen.com API wrapper}
  spec.summary       = %q{Mailigen.com API wrapper}
  spec.homepage      = "http://dev.mailigen.com/pages/viewpage.action?pageId=327689"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '~> 2.0'

  spec.add_dependency "activesupport", ">= 3.0"
  spec.add_dependency "retryable", ">= 2.0.4" # retry flaky remote requests

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.5.0"
  spec.add_development_dependency "pry", "~> 0.10.4"
  spec.add_development_dependency "webmock", "~> 2.3.2"
end
