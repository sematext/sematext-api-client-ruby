=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'spec_helper'
require 'json'

# Unit tests for stcloud::AlertsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AlertsApi' do
  before do
    # run before each test
    @instance = stcloud::AlertsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AlertsApi' do
    it 'should create an instance of AlertsApi' do
      expect(@instance).to be_instance_of(stcloud::AlertsApi)
    end
  end

  # unit tests for create_alert_using_post
  # Create alert rule
  # @param body dto
  # @param [Hash] opts the optional parameters
  # @return [AlertRuleResponse]
  describe 'create_alert_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_alert_rule_using_delete
  # Delete alert rule
  # @param updateable_alert_id updateableAlertId
  # @param [Hash] opts the optional parameters
  # @return [GenericMapBasedApiResponse]
  describe 'delete_alert_rule_using_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable_alert_rule_using_put
  # Disable alert rule
  # @param updateable_alert_id updateableAlertId
  # @param [Hash] opts the optional parameters
  # @return [GenericMapBasedApiResponse]
  describe 'disable_alert_rule_using_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enable_alert_rule_using_put
  # Enable alert rule
  # @param updateable_alert_id updateableAlertId
  # @param [Hash] opts the optional parameters
  # @return [GenericMapBasedApiResponse]
  describe 'enable_alert_rule_using_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_alert_rules_for_app_using_get
  # Get alert rules for an app
  # @param app_id appId
  # @param [Hash] opts the optional parameters
  # @return [AlertRulesResponse]
  describe 'get_alert_rules_for_app_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
