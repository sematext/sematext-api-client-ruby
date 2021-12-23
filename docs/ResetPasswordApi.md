# SematextCloud::ResetPasswordApi

All URIs are relative to */*

| Method                                                                         | HTTP request                                      | Description    |
| ------------------------------------------------------------------------------ | ------------------------------------------------- | -------------- |
| [**reset_password_using_post**](ResetPasswordApi.md#reset_password_using_post) | **POST** /users-web/api/v3/account/password/reset | Reset Password |

# **reset_password_using_post**

> GenericMapBasedApiResponse reset_password_using_post(body)

Reset Password

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

api_instance = SematextCloud::ResetPasswordApi.new
body = SematextCloud::UserInfo.new # UserInfo | dto


begin
  #Reset Password
  result = api_instance.reset_password_using_post(body)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling ResetPasswordApi->reset_password_using_post: #{e}"
end
```

### Parameters

| Name     | Type                        | Description | Notes |
| -------- | --------------------------- | ----------- | ----- |
| **body** | [**UserInfo**](UserInfo.md) | dto         |

### Return type

[**GenericMapBasedApiResponse**](GenericMapBasedApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
