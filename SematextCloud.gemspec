# -*- encoding: utf-8 -*-

=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

$:.push File.expand_path("../lib", __FILE__)
require "SematextCloud/version"

Gem::Specification.new do |s|
  s.name        = "SematextCloud"
  s.version     = SematextCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["sematext.com"]
  s.email       = ["packages@sematext.com"]
  s.homepage    = "https://github.com/sematext/sematext-api-client-ruby"
  s.summary     = "A Sematext Cloud API client, for interaction with Sematext Cloud solution monitoring, alerting and log shipping."
  s.description = "Sematext Cloud API Client for talking to https://sematext.com/docs/api/"
  s.license     = 'Apache-2.0'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
