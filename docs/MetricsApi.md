# SematextCloud::MetricsApi

All URIs are relative to *https://localhost*

| Method                                                                       | HTTP request                                              | Description                                     |
| ---------------------------------------------------------------------------- | --------------------------------------------------------- | ----------------------------------------------- |
| [**list_data_series_using_post**](MetricsApi.md#list_data_series_using_post) | **POST** /spm-reports/api/v3/apps/{appId}/metrics/data    | Get metrics data points for an app              |
| [**list_filters_using_post**](MetricsApi.md#list_filters_using_post)         | **POST** /spm-reports/api/v3/apps/{appId}/metrics/filters | Get metrics filters and their values for an app |
| [**list_metrics_keys_using_get**](MetricsApi.md#list_metrics_keys_using_get) | **GET** /spm-reports/api/v3/apps/{appId}/metrics/keys     | Get metrics keys for an app                     |
| [**list_metrics_using_get**](MetricsApi.md#list_metrics_using_get)           | **GET** /spm-reports/api/v3/apps/{appId}/metrics          | Get metrics info for an app                     |


# **list_data_series_using_post**
> GenericApiResponse list_data_series_using_post(app_id, request_body)

Get metrics data points for an app

Default value of interval is 5m

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

api_instance = SematextCloud::MetricsApi.new

app_id = 789 # Integer | appId

request_body = SematextCloud::DataSeriesRequest.new # DataSeriesRequest | Metric data points request


begin
  #Get metrics data points for an app
  result = api_instance.list_data_series_using_post(app_id, request_body)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling MetricsApi->list_data_series_using_post: #{e}"
end
```

### Parameters

| Name             | Type                                          | Description                | Notes |
| ---------------- | --------------------------------------------- | -------------------------- | ----- |
| **app_id**       | **Integer**                                   | appId                      |
| **request_body** | [**DataSeriesRequest**](DataSeriesRequest.md) | Metric data points request |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_filters_using_post**
> GenericApiResponse list_filters_using_post(app_id, request_body)

Get metrics filters and their values for an app

Default value of interval is 5m

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

api_instance = SematextCloud::MetricsApi.new

app_id = 789 # Integer | appId

request_body = SematextCloud::DataSeriesRequest.new # DataSeriesRequest | Metric filters request


begin
  #Get metrics filters and their values for an app
  result = api_instance.list_filters_using_post(app_id, request_body)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling MetricsApi->list_filters_using_post: #{e}"
end
```

### Parameters

| Name             | Type                                          | Description            | Notes |
| ---------------- | --------------------------------------------- | ---------------------- | ----- |
| **app_id**       | **Integer**                                   | appId                  |
| **request_body** | [**DataSeriesRequest**](DataSeriesRequest.md) | Metric filters request |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_metrics_keys_using_get**
> GenericApiResponse list_metrics_keys_using_get(app_id)

Get metrics keys for an app

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

api_instance = SematextCloud::MetricsApi.new

app_id = 789 # Integer | appId


begin
  #Get metrics keys for an app
  result = api_instance.list_metrics_keys_using_get(app_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling MetricsApi->list_metrics_keys_using_get: #{e}"
end
```

### Parameters

| Name       | Type        | Description | Notes |
| ---------- | ----------- | ----------- | ----- |
| **app_id** | **Integer** | appId       |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_metrics_using_get**
> GenericApiResponse list_metrics_using_get(app_id)

Get metrics info for an app

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

api_instance = SematextCloud::MetricsApi.new

app_id = 789 # Integer | appId


begin
  #Get metrics info for an app
  result = api_instance.list_metrics_using_get(app_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling MetricsApi->list_metrics_using_get: #{e}"
end
```

### Parameters

| Name       | Type        | Description | Notes |
| ---------- | ----------- | ----------- | ----- |
| **app_id** | **Integer** | appId       |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
