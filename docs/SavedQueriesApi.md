# SematextCloud::SavedQueriesApi

All URIs are relative to *https://localhost*

| Method                                                                                            | HTTP request                                                  | Description                  |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------- | ---------------------------- |
| [**delete_saved_query_using_delete**](SavedQueriesApi.md#delete_saved_query_using_delete)         | **DELETE** /users-web/api/v3/savedQueries/{updateableQueryId} | Delete saved query           |
| [**get_saved_queries_for_app_using_get**](SavedQueriesApi.md#get_saved_queries_for_app_using_get) | **GET** /users-web/api/v3/apps/{appId}/savedQueries           | Get saved queries for an app |
| [**save_query_using_post**](SavedQueriesApi.md#save_query_using_post)                             | **POST** /users-web/api/v3/savedQueries                       | Create saved query           |
| [**save_query_using_put**](SavedQueriesApi.md#save_query_using_put)                               | **PUT** /users-web/api/v3/savedQueries/{updateableQueryId}    | Update saved query           |


# **delete_saved_query_using_delete**
> GenericApiResponse delete_saved_query_using_delete(updateable_query_id)

Delete saved query

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

api_instance = SematextCloud::SavedQueriesApi.new

updateable_query_id = 789 # Integer | updateableQueryId


begin
  #Delete saved query
  result = api_instance.delete_saved_query_using_delete(updateable_query_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SavedQueriesApi->delete_saved_query_using_delete: #{e}"
end
```

### Parameters

| Name                    | Type        | Description       | Notes |
| ----------------------- | ----------- | ----------------- | ----- |
| **updateable_query_id** | **Integer** | updateableQueryId |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_saved_queries_for_app_using_get**
> GenericApiResponse get_saved_queries_for_app_using_get(app_id)

Get saved queries for an app

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

api_instance = SematextCloud::SavedQueriesApi.new

app_id = 789 # Integer | appId


begin
  #Get saved queries for an app
  result = api_instance.get_saved_queries_for_app_using_get(app_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SavedQueriesApi->get_saved_queries_for_app_using_get: #{e}"
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



# **save_query_using_post**
> GenericApiResponse save_query_using_post(saved_query_dto)

Create saved query

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

api_instance = SematextCloud::SavedQueriesApi.new

saved_query_dto = SematextCloud::SavedQuery.new # SavedQuery | savedQueryDto


begin
  #Create saved query
  result = api_instance.save_query_using_post(saved_query_dto)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SavedQueriesApi->save_query_using_post: #{e}"
end
```

### Parameters

| Name                | Type                            | Description   | Notes |
| ------------------- | ------------------------------- | ------------- | ----- |
| **saved_query_dto** | [**SavedQuery**](SavedQuery.md) | savedQueryDto |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **save_query_using_put**
> GenericApiResponse save_query_using_put(saved_query_dto, updateable_query_id)

Update saved query

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

api_instance = SematextCloud::SavedQueriesApi.new

saved_query_dto = SematextCloud::SavedQuery.new # SavedQuery | savedQueryDto

updateable_query_id = 789 # Integer | updateableQueryId


begin
  #Update saved query
  result = api_instance.save_query_using_put(saved_query_dto, updateable_query_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SavedQueriesApi->save_query_using_put: #{e}"
end
```

### Parameters

| Name                    | Type                            | Description       | Notes |
| ----------------------- | ------------------------------- | ----------------- | ----- |
| **saved_query_dto**     | [**SavedQuery**](SavedQuery.md) | savedQueryDto     |
| **updateable_query_id** | **Integer**                     | updateableQueryId |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
