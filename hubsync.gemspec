# -*- encoding: utf-8 -*-

hubsync_path = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(hubsync_path) unless $LOAD_PATH.include?(hubsync_path)
require 'hubsync/version'

Gem::Specification.new do |s|
  s.name        = 'hubsync'
  s.version     = HubSync::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Anthony Burns']
  s.email       = ['anthony@dirtyalpaca.com']
  s.homepage    = 'http://github.com/dirtyalpaca/hubsync'
  s.summary     = %q{Synchronize your GitHub repositories for offline viewing}
  s.description = %q{HubSync helps you manage your cloned repositories from GitHub and keep them up to date}

  s.required_rubygems_version = '>= 1.3.7'
  s.rubyforge_project         = 'hubsync'

  s.add_dependency('grit', '~> 2.0.0')

  s.add_development_dependency('bundler', '~> 1.0.0')

  s.files              = `git ls-files`.split("\n")
  s.test_files         = `git ls-files -- {features,spec}/*`.split("\n")
  s.executables        = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.default_executable = 'hubsync'
  s.require_paths      = ['lib']
end
