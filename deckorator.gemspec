# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deckorator/version'

Gem::Specification.new do |spec|
  spec.name          = "deckorator"
  spec.version       = Deckorator::VERSION
  spec.authors       = ['John Otander', 'Jake Mays']
  spec.email         = ['johnotander@gmail.com', 'jake.m.mays@gmail.com']

  spec.summary       = %q{Lightweight decorators using plain old Ruby objects.}
  spec.description   = %q{Lightweight decorators using plain old Ruby objects.}
  spec.homepage      = 'https://github.com/johnotander/deckorator'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '>= 3.0.0'
  spec.add_development_dependency "activemodel", ">= 3.0.0"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
