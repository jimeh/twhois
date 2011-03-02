# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'twhois/version'

Gem::Specification.new do |s|
  s.name        = 'twhois'
  s.version     = Twhois::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Jim Myhrberg']
  s.email       = ['contact@jimeh.me']
  s.homepage    = 'https://github.com/jimeh/twhois'
  s.summary     = 'Whois-like command-line tool and Ruby Gem for Twitter users'
  s.description = 'Whois-like command-line tool and Ruby Gem for Twitter users'

  s.rubyforge_project = 'twhois'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  
  s.add_runtime_dependency 'json_pure', '>= 1.0.0'
  
  s.add_development_dependency 'rspec', '>= 2.5.0'
  s.add_development_dependency 'yard', '>= 0.6.4'
end
