# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spec-talks/version"

Gem::Specification.new do |s|
  s.name        = "spec-talks"
  s.version     = SpecTalks::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['gazay']
  s.email       = ['alex.gaziev@gmail.com']
  s.homepage    = "https://github.com/gazay/rspec-talks"
  s.summary     = %q{Simple gem for say function of mac os x in rspec flow}
  s.description = %q{Simple gem for say function of mac os x in rspec flow}

  s.rubyforge_project = "spec-talks"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'talks'
  s.add_dependency 'rspec'
end
