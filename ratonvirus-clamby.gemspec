
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ratonvirus/clamby/version"

Gem::Specification.new do |spec|
  spec.name          = "ratonvirus-clamby"
  spec.version       = Ratonvirus::Clamby::VERSION
  spec.authors       = ["Antti Hukkanen"]
  spec.email         = ["antti.hukkanen@mainiotech.fi"]

  spec.summary       = "Clamby scanner for Ratonvirus."
  spec.description   = "Provides ClamAV scanner backed by Clamby for the Ratonvirus gem."
  spec.homepage      = "https://github.com/mainio/ratonvirus-clamby"
  spec.license       = "MIT"

  spec.files = Dir[
    "lib/**/*",
    "LICENSE",
    "Rakefile",
    "README.md"
  ]

  spec.require_paths = ["lib"]

  spec.add_dependency "ratonvirus", "~> 0.1.0"
  spec.add_dependency "clamby", "~> 1.6.0"

  # Basic development dependencies.
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.0"

  # Code coverage
  spec.add_development_dependency "simplecov", "~> 0.16.0"
end
