# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-kit/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mike Taylor"]
  gem.email         = ["mike@kitcrm.com"]
  gem.description   = %q{OmniAuth strategy for Kit}
  gem.summary       = %q{OmniAuth strategy for Kit}
  gem.homepage      = "http://github.com/sealabcore/omniauth-kit"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-kit"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Kit::VERSION

  gem.add_dependency 'faraday',    '~> 0.9'
  gem.add_dependency 'multi_json', '~> 1.10'
  gem.add_dependency 'oauth2',     '~> 1.0'
  gem.add_dependency 'omniauth',   '~> 1.2'
  gem.add_dependency 'omniauth-oauth2',   '~> 1.4'
end