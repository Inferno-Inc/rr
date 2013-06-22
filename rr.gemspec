# encoding: utf-8

require 'rake'
require File.expand_path('../lib/rr/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = 'rr'
  gem.version = RR.version
  gem.authors = ['Brian Takita', 'Elliot Winkler']
  gem.email = ['elliot.winkler@gmail.com']
  gem.description = 'RR is a test double framework that features a rich selection of double techniques and a terse syntax.'
  gem.summary = 'RR is a test double framework that features a rich selection of double techniques and a terse syntax.'
  gem.homepage = 'http://rr.github.com/rr'
  gem.license = 'MIT'

  gem.files = FileList[
    'CHANGES.md',
    'CREDITS.md',
    'LICENSE',
    'README.md',
    'doc/*.md',
    'lib/**/*.rb',
    'rr.gemspec'
  ].to_a

  gem.require_paths = ['lib']
end
