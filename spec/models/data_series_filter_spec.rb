=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for stcloud::DataSeriesFilter
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DataSeriesFilter' do
  before do
    # run before each test
    @instance = stcloud::DataSeriesFilter.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DataSeriesFilter' do
    it 'should create an instance of DataSeriesFilter' do
      expect(@instance).to be_instance_of(stcloud::DataSeriesFilter)
    end
  end
  describe 'test attribute "aggregation"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NONE", "SUM", "AVG", "MIN", "MAX"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.aggregation = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "multi_value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "values"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
