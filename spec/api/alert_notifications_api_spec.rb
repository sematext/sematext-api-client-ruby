=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for stcloud::AlertNotificationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AlertNotificationsApi' do
  before do
    # run before each test
    @instance = stcloud::AlertNotificationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AlertNotificationsApi' do
    it 'should create an instance of AlertNotificationsApi' do
      expect(@instance).to be_instance_of(stcloud::AlertNotificationsApi)
    end
  end

  # unit tests for get_alert_notifications_for_app_using_post
  # Get alert notifications for an app
  # Default value of interval is 1d
  # @param app_id appId
  # @param time_interval Time Interval
  # @param [Hash] opts the optional parameters
  # @return [GenericApiResponse]
  describe 'get_alert_notifications_for_app_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_alert_notifications_for_user_using_post
  # Get alert notifications for a user
  # Default value of interval is 1d
  # @param time_interval Time Interval
  # @param [Hash] opts the optional parameters
  # @return [GenericApiResponse]
  describe 'get_alert_notifications_for_user_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
