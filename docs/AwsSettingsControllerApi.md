# stcloud::AwsSettingsControllerApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**update_using_put**](AwsSettingsControllerApi.md#update_using_put) | **PUT** /users-web/api/v3/apps/{appId}/aws | Update App&#39;s AWS CloudWatch settings


# **update_using_put**
> GenericApiResponse update_using_put(app_id, dto)

Update App's AWS CloudWatch settings

Applicable only for AWS Apps

### Example
```ruby
# load the gem
require 'stcloud'
# setup authorization
stcloud.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = stcloud::AwsSettingsControllerApi.new

app_id = 789 # Integer | appId

dto = stcloud::CloudWatchSettings.new # CloudWatchSettings | dto


begin
  #Update App's AWS CloudWatch settings
  result = api_instance.update_using_put(app_id, dto)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling AwsSettingsControllerApi->update_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **Integer**| appId | 
 **dto** | [**CloudWatchSettings**](CloudWatchSettings.md)| dto | 

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


