# stcloud::AppsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_app_types_using_get**](AppsApi.md#get_app_types_using_get) | **GET** /users-web/api/v3/apps/types | Get all App types supported for the account identified with apiKey
[**get_using_get**](AppsApi.md#get_using_get) | **GET** /users-web/api/v3/apps/{anyStateAppId} | Gets defails for one particular App
[**invite_app_guests_using_post**](AppsApi.md#invite_app_guests_using_post) | **POST** /users-web/api/v3/apps/guests | Invite guests to an app
[**list_apps_users_using_get**](AppsApi.md#list_apps_users_using_get) | **GET** /users-web/api/v3/apps/users | Get all users of apps accessible to this account
[**list_using_get**](AppsApi.md#list_using_get) | **GET** /users-web/api/v3/apps | Get all apps accessible by account identified with apiKey
[**update_description_using_put**](AppsApi.md#update_description_using_put) | **PUT** /users-web/api/v3/apps/{anyStateAppId}/description | Update description of the app
[**update_using_put1**](AppsApi.md#update_using_put1) | **PUT** /users-web/api/v3/apps/{anyStateAppId} | Update app


# **get_app_types_using_get**
> GenericApiResponse get_app_types_using_get

Get all App types supported for the account identified with apiKey

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

api_instance = stcloud::AppsApi.new

begin
  #Get all App types supported for the account identified with apiKey
  result = api_instance.get_app_types_using_get
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling AppsApi->get_app_types_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_using_get**
> GenericApiResponse get_using_get(any_state_app_id)

Gets defails for one particular App

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

api_instance = stcloud::AppsApi.new

any_state_app_id = 789 # Integer | anyStateAppId


begin
  #Gets defails for one particular App
  result = api_instance.get_using_get(any_state_app_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling AppsApi->get_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **any_state_app_id** | **Integer**| anyStateAppId | 

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **invite_app_guests_using_post**
> GenericApiResponse invite_app_guests_using_post(invitation)

Invite guests to an app

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

api_instance = stcloud::AppsApi.new

invitation = stcloud::Invitation.new # Invitation | For `app` and `apps` fields only `id` needs to be populated.Other fields can be left empty or with default values


begin
  #Invite guests to an app
  result = api_instance.invite_app_guests_using_post(invitation)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling AppsApi->invite_app_guests_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitation** | [**Invitation**](Invitation.md)| For &#x60;app&#x60; and &#x60;apps&#x60; fields only &#x60;id&#x60; needs to be populated.Other fields can be left empty or with default values | 

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_apps_users_using_get**
> GenericApiResponse list_apps_users_using_get

Get all users of apps accessible to this account

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

api_instance = stcloud::AppsApi.new

begin
  #Get all users of apps accessible to this account
  result = api_instance.list_apps_users_using_get
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling AppsApi->list_apps_users_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_using_get**
> GenericApiResponse list_using_get

Get all apps accessible by account identified with apiKey

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

api_instance = stcloud::AppsApi.new

begin
  #Get all apps accessible by account identified with apiKey
  result = api_instance.list_using_get
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling AppsApi->list_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_description_using_put**
> GenericApiResponse update_description_using_put(any_state_app_id, opts)

Update description of the app

App can be in any state

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

api_instance = stcloud::AppsApi.new

any_state_app_id = 789 # Integer | App Id

opts = { 
  update_details: stcloud::AppDescription.new # AppDescription | Update Details
}

begin
  #Update description of the app
  result = api_instance.update_description_using_put(any_state_app_id, opts)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling AppsApi->update_description_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **any_state_app_id** | **Integer**| App Id | 
 **update_details** | [**AppDescription**](AppDescription.md)| Update Details | [optional] 

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_using_put1**
> GenericApiResponse update_using_put1(dto, any_state_app_id)

Update app

App can be in any state

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

api_instance = stcloud::AppsApi.new

dto = stcloud::UpdateAppInfo.new # UpdateAppInfo | dto

any_state_app_id = 789 # Integer | App Id


begin
  #Update app
  result = api_instance.update_using_put1(dto, any_state_app_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling AppsApi->update_using_put1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dto** | [**UpdateAppInfo**](UpdateAppInfo.md)| dto | 
 **any_state_app_id** | **Integer**| App Id | 

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



