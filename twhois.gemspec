# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "twhois/version"

Gem::Specification.new do |s|
  s.name        = "twhois"
  s.version     = Twhois::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Write your name"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "twhois"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency 'json_pure', '>= 1.0.0'
  s.add_runtime_dependency 'hashie', '>= 1.0.0'
  
  s.add_development_dependency 'rspec', '>= 2.5.0'
  s.add_development_dependency 'yard', '>= 0.6.4'
end
