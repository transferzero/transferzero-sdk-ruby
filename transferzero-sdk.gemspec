# -*- encoding: utf-8 -*-

=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

$:.push File.expand_path("../lib", __FILE__)
require "transferzero-sdk/version"

Gem::Specification.new do |s|
  s.name        = "transferzero-sdk"
  s.version     = TransferZero::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TransferZero"]
  s.email       = ["engineers@transferzero.com"]
  s.homepage    = "https://github.com/transferzero/transferzero-sdk-ruby"
  s.summary     = "TransferZero API Ruby Gem"
  s.description = "Ruby library for the TransferZero API"
  s.license     = 'MIT'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'faraday', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '>= 1.4'
  s.add_runtime_dependency 'activesupport', '>= 4'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
