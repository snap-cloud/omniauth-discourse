require File.expand_path("../lib/omniauth-discourse/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Ioannis Tsagkatakis"]
  gem.email = ["jtsagat@gmail.com"]
  gem.description = "A generic strategy for OmniAuth to authenticate against Discourse forum's SSO."
  gem.summary = gem.description
  gem.homepage = "https://github.com/linuxuser-gr/omniauth-discourse"
  gem.license = "MIT"

  gem.add_dependency "omniauth", "~> 1.9", ">= 1.9.1"
  gem.add_dependency "addressable", "~> 2.7"
  gem.add_dependency "rack"

  gem.add_development_dependency "bundler", "~> 1.9"

  gem.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name = "omniauth-discourse"
  gem.require_paths = ["lib"]
  gem.version = OmniAuth::Discourse::VERSION
end
