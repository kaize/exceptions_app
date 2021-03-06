# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exceptions_app/version'

Gem::Specification.new do |gem|
  gem.name          = "exceptions_app"
  gem.version       = ExceptionsApp::VERSION
  gem.authors       = ["Igor Kuznetsov"]
  gem.email         = ["igkuznetsov@gmail.com"]
  gem.description   = %q{exceptions_app is gem, that provides a simple way of handling exceptions in Rails applications.}
  gem.summary       = %q{exceptions_app provides a simple way of handling exceptions in Rails applications}
  gem.homepage      = "http://github.com/kaize/exceptions_app"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", "~> 3.2.9"
  gem.add_runtime_dependency "capistrano"
end
