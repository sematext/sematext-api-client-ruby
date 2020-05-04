# stcloud::ResetPasswordApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reset_password_using_post**](ResetPasswordApi.md#reset_password_using_post) | **POST** /users-web/api/v3/account/password/reset | Reset Password


# **reset_password_using_post**
> GenericApiResponse reset_password_using_post(dto)

Reset Password

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

api_instance = stcloud::ResetPasswordApi.new

dto = stcloud::UserInfo.new # UserInfo | dto


begin
  #Reset Password
  result = api_instance.reset_password_using_post(dto)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling ResetPasswordApi->reset_password_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dto** | [**UserInfo**](UserInfo.md)| dto | 

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



