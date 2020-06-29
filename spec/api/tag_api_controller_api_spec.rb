=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for SematextCloud::TagApiControllerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TagApiControllerApi' do
  before do
    # run before each test
    @instance = SematextCloud::TagApiControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TagApiControllerApi' do
    it 'should create an instance of TagApiControllerApi' do
      expect(@instance).to be_instance_of(SematextCloud::TagApiControllerApi)
    end
  end

  # unit tests for get_tag_names_using_get
  # Gets tag names for the given application identifiers appearing in the given time frame.
  # @param app_ids appIds
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from from
  # @option opts [Integer] :to to
  # @option opts [BOOLEAN] :metrics metrics
  # @option opts [BOOLEAN] :logs logs
  # @option opts [BOOLEAN] :events events
  # @option opts [BOOLEAN] :rum rum
  # @return [Object]
  describe 'get_tag_names_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_using_get1
  # Gets values for specified tags for the given application identifiers appearing in the given time frame.
  # @param app_ids appIds
  # @param tag tag
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from from
  # @option opts [Integer] :to to
  # @option opts [BOOLEAN] :metrics metrics
  # @option opts [BOOLEAN] :logs logs
  # @option opts [BOOLEAN] :events events
  # @option opts [BOOLEAN] :rum rum
  # @return [Object]
  describe 'get_using_get1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_using_get2
  # Gets values for specified tags for the given application identifiers appearing in the given time frame.
  # @param app_ids appIds
  # @param tag tag
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from from
  # @option opts [Integer] :to to
  # @option opts [BOOLEAN] :metrics metrics
  # @option opts [BOOLEAN] :logs logs
  # @option opts [BOOLEAN] :events events
  # @option opts [BOOLEAN] :rum rum
  # @return [Object]
  describe 'get_using_get2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
