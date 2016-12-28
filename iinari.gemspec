# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iinari/version'

Gem::Specification.new do |spec|
  spec.name          = "iinari"
  spec.version       = Iinari::VERSION
  spec.authors       = ["vitamiena"]
  spec.email         = ["s13t210@stmail.eng.kagawa-u.ac.jp"]
  spec.summary       = %q{Create Thesis Summary for Docx file formatted by TomiLabo}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "docx", "~> 0.2"
  spec.add_dependency "thor"
end
