# stcloud::TokensApiControllerApi

All URIs are relative to *https://localhost*

| Method                                                                       | HTTP request                                                        | Description                               |
| ---------------------------------------------------------------------------- | ------------------------------------------------------------------- | ----------------------------------------- |
| [**create_app_token1**](TokensApiControllerApi.md#create_app_token1)         | **POST** /users-web/api/v3/apps/{appId}/tokens                      | Create new app token                      |
| [**delete_app_token1**](TokensApiControllerApi.md#delete_app_token1)         | **DELETE** /users-web/api/v3/apps/{appId}/tokens/{tokenId}          | Delete app token                          |
| [**get_app_tokens**](TokensApiControllerApi.md#get_app_tokens)               | **GET** /users-web/api/v3/apps/{appId}/tokens                       | Get app available tokens                  |
| [**regenerate_app_token1**](TokensApiControllerApi.md#regenerate_app_token1) | **POST** /users-web/api/v3/apps/{appId}/tokens/{tokenId}/regenerate | Regenerate app token)                     |
| [**update_app_token**](TokensApiControllerApi.md#update_app_token)           | **PUT** /users-web/api/v3/apps/{appId}/tokens/{tokenId}             | Update app token (enable/disable or name) |


# **create_app_token1**
> GenericApiResponse create_app_token1(app_id, dto)

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

app_id = 789 # Integer | appId

dto = stcloud::CreateTokenDto.new # CreateTokenDto | dto


begin
  #Create new app token
  result = api_instance.create_app_token1(app_id, dto)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling TokensApiControllerApi->create_app_token1: #{e}"
end
```

### Parameters

| Name       | Type                                    | Description | Notes |
| ---------- | --------------------------------------- | ----------- | ----- |
| **app_id** | **Integer**                             | appId       |
| **dto**    | [**CreateTokenDto**](CreateTokenDto.md) | dto         |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_app_token1**
> GenericApiResponse delete_app_token1(app_id, token_id)

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
  result = api_instance.delete_app_token1(app_id, token_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling TokensApiControllerApi->delete_app_token1: #{e}"
end
```

### Parameters

| Name         | Type        | Description | Notes |
| ------------ | ----------- | ----------- | ----- |
| **app_id**   | **Integer** | appId       |
| **token_id** | **Integer** | tokenId     |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_app_tokens**
> GenericApiResponse get_app_tokens(app_id)

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
  result = api_instance.get_app_tokens(app_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling TokensApiControllerApi->get_app_tokens: #{e}"
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



# **regenerate_app_token1**
> GenericApiResponse regenerate_app_token1(app_id, token_id)

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
  result = api_instance.regenerate_app_token1(app_id, token_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling TokensApiControllerApi->regenerate_app_token1: #{e}"
end
```

### Parameters

| Name         | Type        | Description | Notes |
| ------------ | ----------- | ----------- | ----- |
| **app_id**   | **Integer** | appId       |
| **token_id** | **Integer** | tokenId     |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_app_token**
> GenericApiResponse update_app_token(app_id, token_id, dto)

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

app_id = 789 # Integer | appId

token_id = 789 # Integer | tokenId

dto = stcloud::UpdateTokenDto.new # UpdateTokenDto | dto


begin
  #Update app token (enable/disable or name)
  result = api_instance.update_app_token(app_id, token_id, dto)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling TokensApiControllerApi->update_app_token: #{e}"
end
```

### Parameters

| Name         | Type                                    | Description | Notes |
| ------------ | --------------------------------------- | ----------- | ----- |
| **app_id**   | **Integer**                             | appId       |
| **token_id** | **Integer**                             | tokenId     |
| **dto**      | [**UpdateTokenDto**](UpdateTokenDto.md) | dto         |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
