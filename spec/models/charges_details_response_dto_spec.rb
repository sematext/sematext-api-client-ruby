=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.30
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SematextCloud::ChargesDetailsResponseDto
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ChargesDetailsResponseDto' do
  before do
    # run before each test
    @instance = SematextCloud::ChargesDetailsResponseDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChargesDetailsResponseDto' do
    it 'should create an instance of ChargesDetailsResponseDto' do
      expect(@instance).to be_instance_of(SematextCloud::ChargesDetailsResponseDto)
    end
  end
  describe 'test attribute "app"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "charge_base"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SUMMARIZED_USAGE", "MIN_MONTHLY_FEE", "SUM_OF_DAILY_FEES", "TOTAL_MONTHLY_FEE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.charge_base = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "day_usage_data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "monthly_fee_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "period_fee_periods"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "usage_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
