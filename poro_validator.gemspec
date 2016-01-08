# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poro_validator/version'

Gem::Specification.new do |spec|
  spec.name          = "poro_validator"
  spec.version       = PoroValidator::VERSION
  spec.authors       = ["Kareem Gan"]
  spec.email         = ["kareemgan@gmail.com"]

  spec.summary       = %q{A PORO (Plain Old Ruby Object) validator.}
  spec.description   = %q{Validations for ruby objects or POROs.}
  spec.homepage      = "https://github.com/magicalbanana/poro_validator"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency("bundler")
  spec.add_development_dependency("rake")
  spec.add_development_dependency("rspec")
  spec.add_development_dependency('simplecov')
  spec.add_development_dependency('coveralls')
  spec.add_development_dependency('recursive-open-struct')
  spec.add_development_dependency('nyan-cat-formatter')
end
