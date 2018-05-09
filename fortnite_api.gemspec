lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fortnite_api/version"

Gem::Specification.new do |spec|
  spec.name          = "fortnite_api"
  spec.version       = FortniteApi::VERSION
  spec.authors       = ["romainr88"]
  spec.email         = ["romainr88dev@gmail.com"]

  spec.summary       = "Sumarry"
  spec.description   = "Description"
  spec.homepage      = "https://github.com/romainr88/fortnite_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f| f.match(%r{^(test|spec|features)/}) end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end