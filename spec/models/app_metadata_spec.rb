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

# Unit tests for SematextCloud::AppMetadata
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AppMetadata' do
  before do
    # run before each test
    @instance = SematextCloud::AppMetadata.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AppMetadata' do
    it 'should create an instance of AppMetadata' do
      expect(@instance).to be_instance_of(SematextCloud::AppMetadata)
    end
  end
  describe 'test attribute "aws_cloud_watch_access_key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "aws_cloud_watch_secret_key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "aws_fetch_frequency"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["MINUTE", "FIVE_MINUTES", "FIFTEEN_MINUTES"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.aws_fetch_frequency = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "aws_region"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["US_EAST_1", "US_WEST_1", "EU_WEST_1", "US_WEST_2", "AP_SOUTHEAST_1", "AP_SOUTHEAST_2", "AP_NORTHEAST_1", "SA_EAST_1", "GovCloud", "CN_NORTH_1", "US_EAST_2", "AP_SOUTH_1", "AP_NORTHEAST_2", "CA_CENTRAL_1", "EU_CENTRAL_1", "EU_WEST_2"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.aws_region = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "sub_types"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["aws_ec2", "aws_elb", "aws_ebs"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.sub_types = value }.not_to raise_error
      # end
    end
  end

end
