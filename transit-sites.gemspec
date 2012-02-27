# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "transit/sites/version"

Gem::Specification.new do |s|
  s.name        = "transit-sites"
  s.version     = Transit::Sites::VERSION
  s.authors     = ["Brent Kirby"]
  s.email       = ["brent@kurbmedia.com"]
  s.homepage    = "https://github.com/transitcms/sites"
  s.summary     = %q{Multi-site extension for the Transit CMS engine.}
  s.description = %q{Extends the Transit CMS engine to support multiple sites within one application.}

  s.rubyforge_project = "transit-sites"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency("transit", ">= 0.1.0")
  
end
