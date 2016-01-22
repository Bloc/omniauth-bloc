# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-bloc/version"

Gem::Specification.new do |s|
  s.name = "omniauth-bloc"
  s.version = OmniAuth::Bloc::VERSION
  s.authors = ["Dave Paola"]
  s.email = ["dave@bloc.io"]
  s.homepage = "https://github.com/bloc/omniauth-bloc"
  s.summary = s.description
  s.license = 'NCSA'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'json', '~> 1.3'
  s.add_dependency 'omniauth-oauth2'
  s.add_development_dependency 'bundler', '~> 1.0'
  
end
