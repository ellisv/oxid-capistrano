# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'oxid-capistrano'
  gem.version       = '1.0.0'
  gem.authors       = ['OXID Professional services']
  gem.email         = ['info@oxid-esales.com']
  gem.description   = %q{OXID eShop specific Capistrano tasks}
  gem.summary       = %q{OXID eShop specific Capistrano tasks}
  gem.homepage      = 'https://github.com/EllisV/oxid-capistrano'
  gem.license       = 'GPL v3'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'capistrano', '>= 3.0.0'
end