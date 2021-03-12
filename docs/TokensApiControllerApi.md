# stcloud::TokensApiControllerApi

All URIs are relative to */*

| Method                                                                     | HTTP request                                                        | Description                               |
| -------------------------------------------------------------------------- | ------------------------------------------------------------------- | ----------------------------------------- |
| [**create_app_token1**](TokensApiControllerApi.md#create_app_token1)       | **POST** /users-web/api/v3/apps/{appId}/tokens                      | Create new app token                      |
| [**delete_app_token**](TokensApiControllerApi.md#delete_app_token)         | **DELETE** /users-web/api/v3/apps/{appId}/tokens/{tokenId}          | Delete app token                          |
| [**get_app_tokens1**](TokensApiControllerApi.md#get_app_tokens1)           | **GET** /users-web/api/v3/apps/{appId}/tokens                       | Get app available tokens                  |
| [**regenerate_app_token**](TokensApiControllerApi.md#regenerate_app_token) | **POST** /users-web/api/v3/apps/{appId}/tokens/{tokenId}/regenerate | Regenerate app token)                     |
| [**update_app_token**](TokensApiControllerApi.md#update_app_token)         | **PUT** /users-web/api/v3/apps/{appId}/tokens/{tokenId}             | Update app token (enable/disable or name) |

# **create_app_token1**
> TokenResponse create_app_token1(bodyapp_id)

Create new app token

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

api_instance = stcloud::TokensApiControllerApi.new
body = stcloud::CreateTokenDto.new # CreateTokenDto | dto
app_id = 789 # Integer | appId


begin
  #Create new app token
  result = api_instance.create_app_token1(bodyapp_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling TokensApiControllerApi->create_app_token1: #{e}"
end
```

### Parameters

| Name       | Type                                    | Description | Notes |
| ---------- | --------------------------------------- | ----------- | ----- |
| **body**   | [**CreateTokenDto**](CreateTokenDto.md) | dto         |
| **app_id** | **Integer**                             | appId       |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_app_token**
> GenericMapBasedApiResponse delete_app_token(app_id, token_id)

Delete app token

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

api_instance = stcloud::TokensApiControllerApi.new
app_id = 789 # Integer | appId
token_id = 789 # Integer | tokenId


begin
  #Delete app token
  result = api_instance.delete_app_token(app_id, token_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling TokensApiControllerApi->delete_app_token: #{e}"
end
```

### Parameters

| Name         | Type        | Description | Notes |
| ------------ | ----------- | ----------- | ----- |
| **app_id**   | **Integer** | appId       |
| **token_id** | **Integer** | tokenId     |

### Return type

[**GenericMapBasedApiResponse**](GenericMapBasedApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_app_tokens1**
> TokensResponse get_app_tokens1(app_id)

Get app available tokens

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

api_instance = stcloud::TokensApiControllerApi.new
app_id = 789 # Integer | appId


begin
  #Get app available tokens
  result = api_instance.get_app_tokens1(app_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling TokensApiControllerApi->get_app_tokens1: #{e}"
end
```

### Parameters

| Name       | Type        | Description | Notes |
| ---------- | ----------- | ----------- | ----- |
| **app_id** | **Integer** | appId       |

### Return type

[**TokensResponse**](TokensResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **regenerate_app_token**
> TokenResponse regenerate_app_token(app_id, token_id)

Regenerate app token)

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

api_instance = stcloud::TokensApiControllerApi.new
app_id = 789 # Integer | appId
token_id = 789 # Integer | tokenId


begin
  #Regenerate app token)
  result = api_instance.regenerate_app_token(app_id, token_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling TokensApiControllerApi->regenerate_app_token: #{e}"
end
```

### Parameters

| Name         | Type        | Description | Notes |
| ------------ | ----------- | ----------- | ----- |
| **app_id**   | **Integer** | appId       |
| **token_id** | **Integer** | tokenId     |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_app_token**
> TokenResponse update_app_token(bodyapp_idtoken_id)

Update app token (enable/disable or name)

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

api_instance = stcloud::TokensApiControllerApi.new
body = stcloud::UpdateTokenDto.new # UpdateTokenDto | dto
app_id = 789 # Integer | appId
token_id = 789 # Integer | tokenId


begin
  #Update app token (enable/disable or name)
  result = api_instance.update_app_token(bodyapp_idtoken_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling TokensApiControllerApi->update_app_token: #{e}"
end
```

### Parameters

| Name         | Type                                    | Description | Notes |
| ------------ | --------------------------------------- | ----------- | ----- |
| **body**     | [**UpdateTokenDto**](UpdateTokenDto.md) | dto         |
| **app_id**   | **Integer**                             | appId       |
| **token_id** | **Integer**                             | tokenId     |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
