$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sdek_calc/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sdek_calc"
  s.version     = SdekCalc::VERSION
  s.authors     = ["MAXOPKA"]
  s.email       = ["d.n.krivenko@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SdekCalc."
  s.description = "TODO: Description of SdekCalc."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end