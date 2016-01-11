$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sdek_calc/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sdek_calc"
  s.version     = SdekCalc::VERSION
  s.authors     = ["MAXOPKA"]
  s.email       = ["d.n.krivenko@gmail.com"]
  s.homepage    = ""
  s.summary     = "Gem for Delivry calculation API"
  s.description = "It's Rails Engine for Apps why use Delivery"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_runtime_dependency "rails", "~> 4.2.5"
  s.add_runtime_dependency "jbuilder"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
end
