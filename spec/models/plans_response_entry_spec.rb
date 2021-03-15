=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for stcloud::PlansResponseEntry
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PlansResponseEntry' do
  before do
    # run before each test
    @instance = stcloud::PlansResponseEntry.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlansResponseEntry' do
    it 'should create an instance of PlansResponseEntry' do
      expect(@instance).to be_instance_of(stcloud::PlansResponseEntry)
    end
  end
  describe 'test attribute "available_plans"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
