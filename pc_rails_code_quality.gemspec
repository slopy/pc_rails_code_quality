# frozen_string_literal: true
$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'pc_rails_code_quality/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'pc_rails_code_quality'
  s.version     = PcRailsCodeQuality::VERSION
  s.authors     = ['Slopy']
  s.email       = ['mic.mar@live.com']
  s.homepage    = 'https://github.com/slopy/pc_rails_code_quality'
  s.summary     = 'Banch of developer tools'
  s.description = 'Banch of developer tools...'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.0.0'
  s.add_dependency 'rubocop', '~> 0.46.0'
  s.add_dependency 'rubycritic', '~> 3.1.3'
  s.add_dependency 'simplecov', '~> 0.12.0'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry-rails'
end
