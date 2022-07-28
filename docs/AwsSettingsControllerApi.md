# SematextCloud::AwsSettingsControllerApi

All URIs are relative to */*

| Method                                                               | HTTP request                               | Description                               |
| -------------------------------------------------------------------- | ------------------------------------------ | ----------------------------------------- |
| [**update_using_put**](AwsSettingsControllerApi.md#update_using_put) | **PUT** /users-web/api/v3/apps/{appId}/aws | Update App&#x27;s AWS CloudWatch settings |

# **update_using_put**

> CloudWatchSettingsResponse update_using_put(bodyapp_id)

Update App's AWS CloudWatch settings

Applicable only for AWS Apps

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

api_instance = SematextCloud::AwsSettingsControllerApi.new
body = SematextCloud::CloudWatchSettings.new # CloudWatchSettings | dto
app_id = 789 # Integer | appId


begin
  #Update App's AWS CloudWatch settings
  result = api_instance.update_using_put(bodyapp_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AwsSettingsControllerApi->update_using_put: #{e}"
end
```

### Parameters

| Name       | Type                                            | Description | Notes |
| ---------- | ----------------------------------------------- | ----------- | ----- |
| **body**   | [**CloudWatchSettings**](CloudWatchSettings.md) | dto         |
| **app_id** | **Integer**                                     | appId       |

### Return type

[**CloudWatchSettingsResponse**](CloudWatchSettingsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
