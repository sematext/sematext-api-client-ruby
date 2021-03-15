# stcloud::LogsUsageApiControllerApi

All URIs are relative to */*

| Method                                                                              | HTTP request                                                   | Description |
| ----------------------------------------------------------------------------------- | -------------------------------------------------------------- | ----------- |
| [**get_for_range_using_get**](LogsUsageApiControllerApi.md#get_for_range_using_get) | **GET** /logsene-reports/api/v3/apps/{appId}/usage/{from}/{to} | getForRange |

# **get_for_range_using_get**
> UsageResponse get_for_range_using_get(app_id, from, to)

getForRange

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

api_instance = stcloud::LogsUsageApiControllerApi.new
app_id = 789 # Integer | appId
from = 789 # Integer | from
to = 789 # Integer | to


begin
  #getForRange
  result = api_instance.get_for_range_using_get(app_id, from, to)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling LogsUsageApiControllerApi->get_for_range_using_get: #{e}"
end
```

### Parameters

| Name       | Type        | Description | Notes |
| ---------- | ----------- | ----------- | ----- |
| **app_id** | **Integer** | appId       |
| **from**   | **Integer** | from        |
| **to**     | **Integer** | to          |

### Return type

[**UsageResponse**](UsageResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json
