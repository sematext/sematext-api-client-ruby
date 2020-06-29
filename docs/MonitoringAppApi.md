# SematextCloud::MonitoringAppApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_spm_application1**](MonitoringAppApi.md#create_spm_application1) | **POST** /spm-reports/api/v3/apps | Create Monitoring App


# **create_spm_application1**
> GenericApiResponse create_spm_application1(application_details)

Create Monitoring App

### Example
```ruby
# load the gem
require 'SematextCloud'
# setup authorization
SematextCloud.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SematextCloud::MonitoringAppApi.new

application_details = SematextCloud::CreateAppInfo.new # CreateAppInfo | Details of the application to be created


begin
  #Create Monitoring App
  result = api_instance.create_spm_application1(application_details)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling MonitoringAppApi->create_spm_application1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application_details** | [**CreateAppInfo**](CreateAppInfo.md)| Details of the application to be created |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
