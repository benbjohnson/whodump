# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'whodump/version'

Gem::Specification.new do |s|
  s.name        = 'whodump'
  s.version     = Whodump::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Ben Johnson']
  s.email       = ['benbjohnson@yahoo.com']
  s.homepage    = 'http://github.com/benbjohnson/whodump'
  s.summary     = 'CLI for checking domain name availability'
  s.executables = ['whodump']
  s.default_executable = 'whodump'

  s.add_dependency('whois', '~> 2.0.1')
  s.add_dependency('commander', '~> 4.0.3')
  s.add_dependency('terminal-table', '~> 1.4.2')

  s.add_development_dependency('rspec', '~> 2.4.0')
  s.add_development_dependency('mocha', '~> 0.9.12')
  s.add_development_dependency('rcov', '~> 0.9.9')

  s.test_files   = Dir.glob('test/**/*')
  s.files        = Dir.glob('lib/**/*') + %w(README.md)
  s.require_path = 'lib'
end
