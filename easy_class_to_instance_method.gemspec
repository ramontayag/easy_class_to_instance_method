# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_class_to_instance_method/version'

Gem::Specification.new do |spec|
  spec.name          = "easy_class_to_instance_method"
  spec.version       = EasyClassToInstanceMethod::VERSION
  spec.authors       = ["Ramon Tayag"]
  spec.email         = ["ramon.tayag@gmail.com"]
  spec.description   = %q{Adds convenience method to class to insantiate itself and execute a method.}
  spec.summary       = %q{Adds convenience method to class to insantiate itself and execute a method. Makes it easier to work with non-singletons.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", '~> 2.13.0'
end
