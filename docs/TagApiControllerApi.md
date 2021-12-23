# SematextCloud::TagApiControllerApi

All URIs are relative to */*

| Method                                                                        | HTTP request                                              | Description                                                                                             |
| ----------------------------------------------------------------------------- | --------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| [**get_tag_names_using_get**](TagApiControllerApi.md#get_tag_names_using_get) | **GET** /spm-reports/api/v3/apps/{appIds}/tagNames        | Gets tag names for the given application identifiers appearing in the given time frame.                 |
| [**get_using_get**](TagApiControllerApi.md#get_using_get)                     | **GET** /spm-reports/api/v3/apps/{appIds}/metrics/filters | Gets values for specified tags for the given application identifiers appearing in the given time frame. |
| [**get_using_get3**](TagApiControllerApi.md#get_using_get3)                   | **GET** /spm-reports/api/v3/apps/{appIds}/tags            | Gets values for specified tags for the given application identifiers appearing in the given time frame. |

# **get_tag_names_using_get**

> TagNamesResponse get_tag_names_using_get(app_ids, opts)

Gets tag names for the given application identifiers appearing in the given time frame.

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

api_instance = SematextCloud::TagApiControllerApi.new
app_ids = 'app_ids_example' # String | appIds
opts = { 
  from: 789, # Integer | from
  to: 789, # Integer | to
  metrics: true, # BOOLEAN | metrics
  logs: true, # BOOLEAN | logs
  events: false, # BOOLEAN | events
  rum: true # BOOLEAN | rum
}

begin
  #Gets tag names for the given application identifiers appearing in the given time frame.
  result = api_instance.get_tag_names_using_get(app_ids, opts)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling TagApiControllerApi->get_tag_names_using_get: #{e}"
end
```

### Parameters

| Name        | Type        | Description | Notes                         |
| ----------- | ----------- | ----------- | ----------------------------- |
| **app_ids** | **String**  | appIds      |
| **from**    | **Integer** | from        | [optional]                    |
| **to**      | **Integer** | to          | [optional]                    |
| **metrics** | **BOOLEAN** | metrics     | [optional] [default to true]  |
| **logs**    | **BOOLEAN** | logs        | [optional] [default to true]  |
| **events**  | **BOOLEAN** | events      | [optional] [default to false] |
| **rum**     | **BOOLEAN** | rum         | [optional] [default to true]  |

### Return type

[**TagNamesResponse**](TagNamesResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **get_using_get**

> Hash&lt;String, Dimension&gt; get_using_get(app_ids, tag, opts)

Gets values for specified tags for the given application identifiers appearing in the given time frame.

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

api_instance = SematextCloud::TagApiControllerApi.new
app_ids = 'app_ids_example' # String | appIds
tag = ['tag_example'] # Array<String> | tag
opts = { 
  from: 789, # Integer | from
  to: 789, # Integer | to
  metrics: true, # BOOLEAN | metrics
  logs: true, # BOOLEAN | logs
  events: false, # BOOLEAN | events
  rum: true # BOOLEAN | rum
}

begin
  #Gets values for specified tags for the given application identifiers appearing in the given time frame.
  result = api_instance.get_using_get(app_ids, tag, opts)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling TagApiControllerApi->get_using_get: #{e}"
end
```

### Parameters

| Name        | Type                                 | Description | Notes                         |
| ----------- | ------------------------------------ | ----------- | ----------------------------- |
| **app_ids** | **String**                           | appIds      |
| **tag**     | [**Array&lt;String&gt;**](String.md) | tag         |
| **from**    | **Integer**                          | from        | [optional]                    |
| **to**      | **Integer**                          | to          | [optional]                    |
| **metrics** | **BOOLEAN**                          | metrics     | [optional] [default to true]  |
| **logs**    | **BOOLEAN**                          | logs        | [optional] [default to true]  |
| **events**  | **BOOLEAN**                          | events      | [optional] [default to false] |
| **rum**     | **BOOLEAN**                          | rum         | [optional] [default to true]  |

### Return type

[**Hash&lt;String, Dimension&gt;**](Dimension.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **get_using_get3**

> Hash&lt;String, Dimension&gt; get_using_get3(app_ids, tag, opts)

Gets values for specified tags for the given application identifiers appearing in the given time frame.

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

api_instance = SematextCloud::TagApiControllerApi.new
app_ids = 'app_ids_example' # String | appIds
tag = ['tag_example'] # Array<String> | tag
opts = { 
  from: 789, # Integer | from
  to: 789, # Integer | to
  metrics: true, # BOOLEAN | metrics
  logs: true, # BOOLEAN | logs
  events: false, # BOOLEAN | events
  rum: true # BOOLEAN | rum
}

begin
  #Gets values for specified tags for the given application identifiers appearing in the given time frame.
  result = api_instance.get_using_get3(app_ids, tag, opts)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling TagApiControllerApi->get_using_get3: #{e}"
end
```

### Parameters

| Name        | Type                                 | Description | Notes                         |
| ----------- | ------------------------------------ | ----------- | ----------------------------- |
| **app_ids** | **String**                           | appIds      |
| **tag**     | [**Array&lt;String&gt;**](String.md) | tag         |
| **from**    | **Integer**                          | from        | [optional]                    |
| **to**      | **Integer**                          | to          | [optional]                    |
| **metrics** | **BOOLEAN**                          | metrics     | [optional] [default to true]  |
| **logs**    | **BOOLEAN**                          | logs        | [optional] [default to true]  |
| **events**  | **BOOLEAN**                          | events      | [optional] [default to false] |
| **rum**     | **BOOLEAN**                          | rum         | [optional] [default to true]  |

### Return type

[**Hash&lt;String, Dimension&gt;**](Dimension.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
