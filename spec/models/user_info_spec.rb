=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SematextCloud::UserInfo
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserInfo' do
  before do
    # run before each test
    @instance = SematextCloud::UserInfo.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserInfo' do
    it 'should create an instance of UserInfo' do
      expect(@instance).to be_instance_of(SematextCloud::UserInfo)
    end
  end
  describe 'test attribute "login_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
