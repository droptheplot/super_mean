$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'super_mean/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'super_mean'
  s.version     = SuperMean::VERSION
  s.authors     = ['Sergey Novikov']
  s.email       = ['novikov359@gmail.com']
  s.homepage    = 'https://github.com/droptheplot/super_mean'
  s.summary     = 'Arithmetic mean from array written in C.'
  s.license     = 'MIT'
  s.extensions  = %w(ext/super_mean/extconf.rb)

  s.files = Dir['{lib,ext}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_development_dependency 'awesome_print'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake-compiler'
end
