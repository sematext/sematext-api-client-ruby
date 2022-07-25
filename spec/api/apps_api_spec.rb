=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'

# Unit tests for SematextCloud::AppsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AppsApi' do
  before do
    # run before each test
    @instance = SematextCloud::AppsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AppsApi' do
    it 'should create an instance of AppsApi' do
      expect(@instance).to be_instance_of(SematextCloud::AppsApi)
    end
  end

  # unit tests for delete_using_delete
  # delete
  # @param any_state_app_id anyStateAppId
  # @param [Hash] opts the optional parameters
  # @return [GenericMapBasedApiResponse]
  describe 'delete_using_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_app_types_using_get
  # Get all App types supported for the account identified with apiKey
  # @param [Hash] opts the optional parameters
  # @return [AppTypesResponse]
  describe 'get_app_types_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_using_get1
  # Gets defails for one particular App
  # @param any_state_app_id anyStateAppId
  # @param [Hash] opts the optional parameters
  # @return [AppResponse]
  describe 'get_using_get1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for invite_app_guests_using_post1
  # Invite guests to an app
  # @param body For &#x60;app&#x60; and &#x60;apps&#x60; fields only &#x60;id&#x60; needs to be populated.Other fields can be left empty or with default values
  # @param [Hash] opts the optional parameters
  # @return [GenericMapBasedApiResponse]
  describe 'invite_app_guests_using_post1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_apps_users_using_get
  # Get all users of apps accessible to this account
  # @param [Hash] opts the optional parameters
  # @return [AppsResponse]
  describe 'list_apps_users_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_using_get1
  # Get all apps accessible by account identified with apiKey
  # @param [Hash] opts the optional parameters
  # @return [AppsResponse]
  describe 'list_using_get1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_description_using_put1
  # Update description of the app
  # App can be in any state
  # @param any_state_app_id App Id
  # @param [Hash] opts the optional parameters
  # @option opts [AppDescription] :body Update Details
  # @return [AppResponse]
  describe 'update_description_using_put1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_using_put3
  # Update app
  # App can be in any state
  # @param body dto
  # @param any_state_app_id App Id
  # @param [Hash] opts the optional parameters
  # @return [AppResponse]
  describe 'update_using_put3 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
