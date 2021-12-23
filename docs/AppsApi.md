# SematextCloud::AppsApi

All URIs are relative to */*

| Method                                                                        | HTTP request                                               | Description                                                        |
| ----------------------------------------------------------------------------- | ---------------------------------------------------------- | ------------------------------------------------------------------ |
| [**delete_using_delete**](AppsApi.md#delete_using_delete)                     | **DELETE** /users-web/api/v3/apps/{anyStateAppId}          | delete                                                             |
| [**get_app_types_using_get**](AppsApi.md#get_app_types_using_get)             | **GET** /users-web/api/v3/apps/types                       | Get all App types supported for the account identified with apiKey |
| [**get_using_get**](AppsApi.md#get_using_get)                                 | **GET** /users-web/api/v3/apps/{anyStateAppId}             | Gets defails for one particular App                                |
| [**invite_app_guests_using_post**](AppsApi.md#invite_app_guests_using_post)   | **POST** /users-web/api/v3/apps/guests                     | Invite guests to an app                                            |
| [**list_apps_users_using_get**](AppsApi.md#list_apps_users_using_get)         | **GET** /users-web/api/v3/apps/users                       | Get all users of apps accessible to this account                   |
| [**list_using_get**](AppsApi.md#list_using_get)                               | **GET** /users-web/api/v3/apps                             | Get all apps accessible by account identified with apiKey          |
| [**update_description_using_put1**](AppsApi.md#update_description_using_put1) | **PUT** /users-web/api/v3/apps/{anyStateAppId}/description | Update description of the app                                      |
| [**update_using_put2**](AppsApi.md#update_using_put2)                         | **PUT** /users-web/api/v3/apps/{anyStateAppId}             | Update app                                                         |

# **delete_using_delete**

> GenericMapBasedApiResponse delete_using_delete(any_state_app_id)

delete

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

api_instance = SematextCloud::AppsApi.new
any_state_app_id = 789 # Integer | anyStateAppId


begin
  #delete
  result = api_instance.delete_using_delete(any_state_app_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AppsApi->delete_using_delete: #{e}"
end
```

### Parameters

| Name                 | Type        | Description   | Notes |
| -------------------- | ----------- | ------------- | ----- |
| **any_state_app_id** | **Integer** | anyStateAppId |

### Return type

[**GenericMapBasedApiResponse**](GenericMapBasedApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **get_app_types_using_get**

> AppTypesResponse get_app_types_using_get

Get all App types supported for the account identified with apiKey

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

api_instance = SematextCloud::AppsApi.new

begin
  #Get all App types supported for the account identified with apiKey
  result = api_instance.get_app_types_using_get
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AppsApi->get_app_types_using_get: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AppTypesResponse**](AppTypesResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **get_using_get**

> AppResponse get_using_get(any_state_app_id)

Gets defails for one particular App

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

api_instance = SematextCloud::AppsApi.new
any_state_app_id = 789 # Integer | anyStateAppId


begin
  #Gets defails for one particular App
  result = api_instance.get_using_get(any_state_app_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AppsApi->get_using_get: #{e}"
end
```

### Parameters

| Name                 | Type        | Description   | Notes |
| -------------------- | ----------- | ------------- | ----- |
| **any_state_app_id** | **Integer** | anyStateAppId |

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **invite_app_guests_using_post**

> GenericMapBasedApiResponse invite_app_guests_using_post(body)

Invite guests to an app

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

api_instance = SematextCloud::AppsApi.new
body = SematextCloud::Invitation.new # Invitation | For `app` and `apps` fields only `id` needs to be populated.Other fields can be left empty or with default values


begin
  #Invite guests to an app
  result = api_instance.invite_app_guests_using_post(body)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AppsApi->invite_app_guests_using_post: #{e}"
end
```

### Parameters

| Name     | Type                            | Description                                                                                                                                     | Notes |
| -------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **body** | [**Invitation**](Invitation.md) | For &#x60;app&#x60; and &#x60;apps&#x60; fields only &#x60;id&#x60; needs to be populated.Other fields can be left empty or with default values |

### Return type

[**GenericMapBasedApiResponse**](GenericMapBasedApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# **list_apps_users_using_get**

> AppsResponse list_apps_users_using_get

Get all users of apps accessible to this account

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

api_instance = SematextCloud::AppsApi.new

begin
  #Get all users of apps accessible to this account
  result = api_instance.list_apps_users_using_get
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AppsApi->list_apps_users_using_get: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AppsResponse**](AppsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **list_using_get**

> AppsResponse list_using_get

Get all apps accessible by account identified with apiKey

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

api_instance = SematextCloud::AppsApi.new

begin
  #Get all apps accessible by account identified with apiKey
  result = api_instance.list_using_get
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AppsApi->list_using_get: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AppsResponse**](AppsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **update_description_using_put1**

> AppResponse update_description_using_put1(any_state_app_id, opts)

Update description of the app

App can be in any state

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

api_instance = SematextCloud::AppsApi.new
any_state_app_id = 789 # Integer | App Id
opts = { 
  body: SematextCloud::AppDescription.new # AppDescription | Update Details
}

begin
  #Update description of the app
  result = api_instance.update_description_using_put1(any_state_app_id, opts)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AppsApi->update_description_using_put1: #{e}"
end
```

### Parameters

| Name                 | Type                                    | Description    | Notes      |
| -------------------- | --------------------------------------- | -------------- | ---------- |
| **any_state_app_id** | **Integer**                             | App Id         |
| **body**             | [**AppDescription**](AppDescription.md) | Update Details | [optional] |

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# **update_using_put2**

> AppResponse update_using_put2(bodyany_state_app_id)

Update app

App can be in any state

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

api_instance = SematextCloud::AppsApi.new
body = SematextCloud::UpdateAppInfo.new # UpdateAppInfo | dto
any_state_app_id = 789 # Integer | App Id


begin
  #Update app
  result = api_instance.update_using_put2(bodyany_state_app_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AppsApi->update_using_put2: #{e}"
end
```

### Parameters

| Name                 | Type                                  | Description | Notes |
| -------------------- | ------------------------------------- | ----------- | ----- |
| **body**             | [**UpdateAppInfo**](UpdateAppInfo.md) | dto         |
| **any_state_app_id** | **Integer**                           | App Id      |

### Return type

[**AppResponse**](AppResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
