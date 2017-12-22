$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "erp/vnmechanical/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "erp_vnmechanical"
  s.version     = Erp::Vnmechanical::VERSION
   s.authors     = ["Son Nguyen",
                  "Hung Nguyen"]
  s.email       = ["sonnn@hoangkhang.com.vn",
                  "hungnt@hoangkhang.com.vn"]
  s.homepage    = "http://hoangkhang.com.vn/"
  s.summary     = "VN Mechanical features of Erp System."
  s.description = "VN Mechanical features of Erp System."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.1.4"
  s.add_dependency "erp_core"
  s.add_dependency "deface"
end
