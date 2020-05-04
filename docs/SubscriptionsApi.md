# stcloud::SubscriptionsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_using_get1**](SubscriptionsApi.md#list_using_get1) | **GET** /users-web/api/v3/apps/{appId}/subscriptions | Get subscriptions for an app
[**send_report_using_post**](SubscriptionsApi.md#send_report_using_post) | **POST** /users-web/api/v3/apps/{appId}/report/send | Trigger emailing of report for an app


# **list_using_get1**
> GenericApiResponse list_using_get1(app_id)

Get subscriptions for an app

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

api_instance = stcloud::SubscriptionsApi.new

app_id = 789 # Integer | appId


begin
  #Get subscriptions for an app
  result = api_instance.list_using_get1(app_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->list_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **Integer**| appId | 

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_report_using_post**
> GenericApiResponse send_report_using_post(app_id, email_dto)

Trigger emailing of report for an app

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

api_instance = stcloud::SubscriptionsApi.new

app_id = 789 # Integer | appId

email_dto = stcloud::ReportInfo.new # ReportInfo | emailDto


begin
  #Trigger emailing of report for an app
  result = api_instance.send_report_using_post(app_id, email_dto)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->send_report_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **Integer**| appId | 
 **email_dto** | [**ReportInfo**](ReportInfo.md)| emailDto | 

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



