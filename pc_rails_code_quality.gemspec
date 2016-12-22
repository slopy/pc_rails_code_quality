$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pc_rails_code_quality/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pc_rails_code_quality"
  s.version     = PcRailsCodeQuality::VERSION
  s.authors     = ["Slopy"]
  s.email       = ["mic.mar@live.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of PcRailsCodeQuality."
  s.description = "TODO: Description of PcRailsCodeQuality."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "sqlite3"
end
