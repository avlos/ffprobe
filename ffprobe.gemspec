lib = File.expand_path("lib", __dir__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ffprobe/version"

Gem::Specification.new do |spec|
  spec.name          = "ffprobe"
  spec.version       = Ffprobe::VERSION
  spec.authors       = ["avlos"]
  spec.email         = ["operations@avlos.io"]

  spec.summary       = "a ruby gem wrapper around the ffprobe cli utility"
  spec.description   = "a ruby gem wrapper around the ffprobe cli utility"
  spec.homepage      = "https://avlos.io"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.12"
  spec.add_development_dependency "simplecov", "~> 0.14"

  spec.add_dependency "hashie"
end
