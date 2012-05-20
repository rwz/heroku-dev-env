# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["Pavel Pravosud"]
  gem.email         = ["rwz@duckroll.ru"]
  gem.description   = %q{Loads .env file for local development.}
  gem.summary       = %q{Loads .env file for local development.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "heroku-dev-env"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.1'
end
