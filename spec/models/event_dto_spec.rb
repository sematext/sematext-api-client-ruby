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

# Unit tests for stcloud::EventDto
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EventDto' do
  before do
    # run before each test
    @instance = stcloud::EventDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventDto' do
    it 'should create an instance of EventDto' do
      expect(@instance).to be_instance_of(stcloud::EventDto)
    end
  end
  describe 'test attribute "from"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "to"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CREATED", "DISABLED", "DELETED", "REACTIVATED", "PLAN_UPDATE", "PAYMENT_METHOD_UPDATE", "SEND_EMAIL_CHANGE", "AUTOMATIC_PLAN_UPGRADE_CHANGE", "MAX_LIMIT_CHANGE", "SAMPLING_CHANGE", "OWNERSHIP_CHANGE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

end
