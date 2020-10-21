# SematextCloud::SubscriptionsApi

All URIs are relative to *https://localhost*

| Method                                                                               | HTTP request                                                          | Description                             |
| ------------------------------------------------------------------------------------ | --------------------------------------------------------------------- | --------------------------------------- |
| [**create_for_app_using_post**](SubscriptionsApi.md#create_for_app_using_post)       | **POST** /users-web/api/v3/apps/{appId}/subscription                  | Create App subscription                 |
| [**create_for_dash_using_post1**](SubscriptionsApi.md#create_for_dash_using_post1)   | **POST** /users-web/api/v3/dashboards/{dashId}/subscription           | Create dashboard subscription           |
| [**delete_using_delete2**](SubscriptionsApi.md#delete_using_delete2)                 | **DELETE** /users-web/api/v3/subscriptions/{updateableSubscriptionId} | Delete subscription                     |
| [**list_using_get2**](SubscriptionsApi.md#list_using_get2)                           | **GET** /users-web/api/v3/apps/{appId}/subscriptions                  | Get subscriptions for an App            |
| [**list_using_get5**](SubscriptionsApi.md#list_using_get5)                           | **GET** /users-web/api/v3/subscriptions                               | Get current account&#39;s subscriptions |
| [**send_app_report_using_post1**](SubscriptionsApi.md#send_app_report_using_post1)   | **POST** /users-web/api/v3/apps/{appId}/report/send                   | Email an App report                     |
| [**send_dash_report_using_post1**](SubscriptionsApi.md#send_dash_report_using_post1) | **POST** /users-web/api/v3/dashboards/{dashId}/report/send            | Email a dashboard report                |
| [**toggle_enabled_using_put1**](SubscriptionsApi.md#toggle_enabled_using_put1)       | **PUT** /users-web/api/v3/subscriptions/{updateableSubscriptionId}    | Toggle subscription status              |
| [**update_for_app_using_put1**](SubscriptionsApi.md#update_for_app_using_put1)       | **PUT** /users-web/api/v3/apps/{appId}/subscription                   | Update App subscription                 |
| [**update_for_dash_using_put**](SubscriptionsApi.md#update_for_dash_using_put)       | **PUT** /users-web/api/v3/dashboards/{dashId}/subscription            | Update dashboard subscription           |


# **create_for_app_using_post**
> GenericApiResponse create_for_app_using_post(app_id, subscription)

Create App subscription

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

subscription = stcloud::SubscriptionDto.new # SubscriptionDto | subscription


begin
  #Create App subscription
  result = api_instance.create_for_app_using_post(app_id, subscription)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_for_app_using_post: #{e}"
end
```

### Parameters

| Name             | Type                                      | Description  | Notes |
| ---------------- | ----------------------------------------- | ------------ | ----- |
| **app_id**       | **Integer**                               | appId        |
| **subscription** | [**SubscriptionDto**](SubscriptionDto.md) | subscription |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_for_dash_using_post1**
> GenericApiResponse create_for_dash_using_post1(dash_id, subscription)

Create dashboard subscription

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

dash_id = 789 # Integer | dashId

subscription = stcloud::SubscriptionDashboardDto.new # SubscriptionDashboardDto | subscription


begin
  #Create dashboard subscription
  result = api_instance.create_for_dash_using_post1(dash_id, subscription)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_for_dash_using_post1: #{e}"
end
```

### Parameters

| Name             | Type                                                        | Description  | Notes |
| ---------------- | ----------------------------------------------------------- | ------------ | ----- |
| **dash_id**      | **Integer**                                                 | dashId       |
| **subscription** | [**SubscriptionDashboardDto**](SubscriptionDashboardDto.md) | subscription |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_using_delete2**
> GenericApiResponse delete_using_delete2(updateable_subscription_id)

Delete subscription

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

updateable_subscription_id = 789 # Integer | updateableSubscriptionId


begin
  #Delete subscription
  result = api_instance.delete_using_delete2(updateable_subscription_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->delete_using_delete2: #{e}"
end
```

### Parameters

| Name                           | Type        | Description              | Notes |
| ------------------------------ | ----------- | ------------------------ | ----- |
| **updateable_subscription_id** | **Integer** | updateableSubscriptionId |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_using_get2**
> GenericApiResponse list_using_get2(app_id)

Get subscriptions for an App

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
  #Get subscriptions for an App
  result = api_instance.list_using_get2(app_id)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->list_using_get2: #{e}"
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



# **list_using_get5**
> GenericApiResponse list_using_get5

Get current account's subscriptions

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

begin
  #Get current account's subscriptions
  result = api_instance.list_using_get5
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->list_using_get5: #{e}"
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



# **send_app_report_using_post1**
> GenericApiResponse send_app_report_using_post1(app_id, email_dto)

Email an App report

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
  #Email an App report
  result = api_instance.send_app_report_using_post1(app_id, email_dto)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->send_app_report_using_post1: #{e}"
end
```

### Parameters

| Name          | Type                            | Description | Notes |
| ------------- | ------------------------------- | ----------- | ----- |
| **app_id**    | **Integer**                     | appId       |
| **email_dto** | [**ReportInfo**](ReportInfo.md) | emailDto    |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_dash_report_using_post1**
> GenericApiResponse send_dash_report_using_post1(dash_id, email_dto)

Email a dashboard report

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

dash_id = 789 # Integer | dashId

email_dto = stcloud::ReportInfo.new # ReportInfo | emailDto


begin
  #Email a dashboard report
  result = api_instance.send_dash_report_using_post1(dash_id, email_dto)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->send_dash_report_using_post1: #{e}"
end
```

### Parameters

| Name          | Type                            | Description | Notes |
| ------------- | ------------------------------- | ----------- | ----- |
| **dash_id**   | **Integer**                     | dashId      |
| **email_dto** | [**ReportInfo**](ReportInfo.md) | emailDto    |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **toggle_enabled_using_put1**
> GenericApiResponse toggle_enabled_using_put1(updateable_subscription_id, dto)

Toggle subscription status

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

updateable_subscription_id = 789 # Integer | updateableSubscriptionId

dto = stcloud::UpdateSubscriptionDto.new # UpdateSubscriptionDto | dto


begin
  #Toggle subscription status
  result = api_instance.toggle_enabled_using_put1(updateable_subscription_id, dto)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->toggle_enabled_using_put1: #{e}"
end
```

### Parameters

| Name                           | Type                                                  | Description              | Notes |
| ------------------------------ | ----------------------------------------------------- | ------------------------ | ----- |
| **updateable_subscription_id** | **Integer**                                           | updateableSubscriptionId |
| **dto**                        | [**UpdateSubscriptionDto**](UpdateSubscriptionDto.md) | dto                      |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_for_app_using_put1**
> GenericApiResponse update_for_app_using_put1(app_id, subscription)

Update App subscription

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

subscription = stcloud::SubscriptionDto.new # SubscriptionDto | subscription


begin
  #Update App subscription
  result = api_instance.update_for_app_using_put1(app_id, subscription)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->update_for_app_using_put1: #{e}"
end
```

### Parameters

| Name             | Type                                      | Description  | Notes |
| ---------------- | ----------------------------------------- | ------------ | ----- |
| **app_id**       | **Integer**                               | appId        |
| **subscription** | [**SubscriptionDto**](SubscriptionDto.md) | subscription |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_for_dash_using_put**
> GenericApiResponse update_for_dash_using_put(dash_id, subscription)

Update dashboard subscription

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

dash_id = 789 # Integer | dashId

subscription = stcloud::SubscriptionDashboardDto.new # SubscriptionDashboardDto | subscription


begin
  #Update dashboard subscription
  result = api_instance.update_for_dash_using_put(dash_id, subscription)
  p result
rescue stcloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->update_for_dash_using_put: #{e}"
end
```

### Parameters

| Name             | Type                                                        | Description  | Notes |
| ---------------- | ----------------------------------------------------------- | ------------ | ----- |
| **dash_id**      | **Integer**                                                 | dashId       |
| **subscription** | [**SubscriptionDashboardDto**](SubscriptionDashboardDto.md) | subscription |

### Return type

[**GenericApiResponse**](GenericApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
