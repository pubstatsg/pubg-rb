
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pubg/version"

Gem::Specification.new do |spec|
  spec.name          = "pubg-rb"
  spec.version       = PUBG::VERSION
  spec.authors       = ["Dainel Vera"]
  spec.email         = ["arubinofaux@gmail.com"]

  spec.summary       = %q{An open-source wrapper for the official PlayerUnknown's Battleground API}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/pubstatsg/pubg-rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.11.3"
  spec.add_development_dependency "pry-byebug", "~> 3.6.0"
  spec.add_development_dependency "webmock", "~> 3.4.1"
  spec.add_development_dependency "sinatra", "~> 2.0.1"

  spec.add_dependency "typhoeus", "~> 1.3.0"
  spec.add_dependency "oj", "~> 3.5.1"
end
