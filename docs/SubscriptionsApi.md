# SematextCloud::SubscriptionsApi

All URIs are relative to */*

| Method                                                                             | HTTP request                                                          | Description                              |
| ---------------------------------------------------------------------------------- | --------------------------------------------------------------------- | ---------------------------------------- |
| [**create_for_app_using_post**](SubscriptionsApi.md#create_for_app_using_post)     | **POST** /users-web/api/v3/apps/{appId}/subscription                  | Create App subscription                  |
| [**create_for_dash_using_post1**](SubscriptionsApi.md#create_for_dash_using_post1) | **POST** /users-web/api/v3/dashboards/{dashId}/subscription           | Create dashboard subscription            |
| [**delete_using_delete2**](SubscriptionsApi.md#delete_using_delete2)               | **DELETE** /users-web/api/v3/subscriptions/{updateableSubscriptionId} | Delete subscription                      |
| [**list_using_get3**](SubscriptionsApi.md#list_using_get3)                         | **GET** /users-web/api/v3/apps/{appId}/subscriptions                  | Get subscriptions for an App             |
| [**list_using_get5**](SubscriptionsApi.md#list_using_get5)                         | **GET** /users-web/api/v3/subscriptions                               | Get current account&#x27;s subscriptions |
| [**send_app_report_using_post**](SubscriptionsApi.md#send_app_report_using_post)   | **POST** /users-web/api/v3/apps/{appId}/report/send                   | Email an App report                      |
| [**send_dash_report_using_post**](SubscriptionsApi.md#send_dash_report_using_post) | **POST** /users-web/api/v3/dashboards/{dashId}/report/send            | Email a dashboard report                 |
| [**toggle_enabled_using_put1**](SubscriptionsApi.md#toggle_enabled_using_put1)     | **PUT** /users-web/api/v3/subscriptions/{updateableSubscriptionId}    | Toggle subscription status               |
| [**update_for_app_using_put**](SubscriptionsApi.md#update_for_app_using_put)       | **PUT** /users-web/api/v3/apps/{appId}/subscription                   | Update App subscription                  |
| [**update_for_dash_using_put1**](SubscriptionsApi.md#update_for_dash_using_put1)   | **PUT** /users-web/api/v3/dashboards/{dashId}/subscription            | Update dashboard subscription            |

# **create_for_app_using_post**

> SubscriptionResponse create_for_app_using_post(bodyapp_id)

Create App subscription

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

api_instance = SematextCloud::SubscriptionsApi.new
body = SematextCloud::SubscriptionDto.new # SubscriptionDto | subscription
app_id = 789 # Integer | appId


begin
  #Create App subscription
  result = api_instance.create_for_app_using_post(bodyapp_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_for_app_using_post: #{e}"
end
```

### Parameters

| Name       | Type                                      | Description  | Notes |
| ---------- | ----------------------------------------- | ------------ | ----- |
| **body**   | [**SubscriptionDto**](SubscriptionDto.md) | subscription |
| **app_id** | **Integer**                               | appId        |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# **create_for_dash_using_post1**

> SubscriptionResponse create_for_dash_using_post1(bodydash_id)

Create dashboard subscription

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

api_instance = SematextCloud::SubscriptionsApi.new
body = SematextCloud::SubscriptionDashboardDto.new # SubscriptionDashboardDto | subscription
dash_id = 789 # Integer | dashId


begin
  #Create dashboard subscription
  result = api_instance.create_for_dash_using_post1(bodydash_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_for_dash_using_post1: #{e}"
end
```

### Parameters

| Name        | Type                                                        | Description  | Notes |
| ----------- | ----------------------------------------------------------- | ------------ | ----- |
| **body**    | [**SubscriptionDashboardDto**](SubscriptionDashboardDto.md) | subscription |
| **dash_id** | **Integer**                                                 | dashId       |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# **delete_using_delete2**

> GenericMapBasedApiResponse delete_using_delete2(updateable_subscription_id)

Delete subscription

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

api_instance = SematextCloud::SubscriptionsApi.new
updateable_subscription_id = 789 # Integer | updateableSubscriptionId


begin
  #Delete subscription
  result = api_instance.delete_using_delete2(updateable_subscription_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->delete_using_delete2: #{e}"
end
```

### Parameters

| Name                           | Type        | Description              | Notes |
| ------------------------------ | ----------- | ------------------------ | ----- |
| **updateable_subscription_id** | **Integer** | updateableSubscriptionId |

### Return type

[**GenericMapBasedApiResponse**](GenericMapBasedApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **list_using_get3**

> SubscriptionsResponse list_using_get3(app_id)

Get subscriptions for an App

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

api_instance = SematextCloud::SubscriptionsApi.new
app_id = 789 # Integer | appId


begin
  #Get subscriptions for an App
  result = api_instance.list_using_get3(app_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->list_using_get3: #{e}"
end
```

### Parameters

| Name       | Type        | Description | Notes |
| ---------- | ----------- | ----------- | ----- |
| **app_id** | **Integer** | appId       |

### Return type

[**SubscriptionsResponse**](SubscriptionsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **list_using_get5**

> SubscriptionsResponse list_using_get5

Get current account's subscriptions

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

api_instance = SematextCloud::SubscriptionsApi.new

begin
  #Get current account's subscriptions
  result = api_instance.list_using_get5
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->list_using_get5: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SubscriptionsResponse**](SubscriptionsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **send_app_report_using_post**

> MailReportResponse send_app_report_using_post(bodyapp_id)

Email an App report

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

api_instance = SematextCloud::SubscriptionsApi.new
body = SematextCloud::ReportInfo.new # ReportInfo | emailDto
app_id = 789 # Integer | appId


begin
  #Email an App report
  result = api_instance.send_app_report_using_post(bodyapp_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->send_app_report_using_post: #{e}"
end
```

### Parameters

| Name       | Type                            | Description | Notes |
| ---------- | ------------------------------- | ----------- | ----- |
| **body**   | [**ReportInfo**](ReportInfo.md) | emailDto    |
| **app_id** | **Integer**                     | appId       |

### Return type

[**MailReportResponse**](MailReportResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# **send_dash_report_using_post**

> MailReportResponse send_dash_report_using_post(bodydash_id)

Email a dashboard report

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

api_instance = SematextCloud::SubscriptionsApi.new
body = SematextCloud::ReportInfo.new # ReportInfo | emailDto
dash_id = 789 # Integer | dashId


begin
  #Email a dashboard report
  result = api_instance.send_dash_report_using_post(bodydash_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->send_dash_report_using_post: #{e}"
end
```

### Parameters

| Name        | Type                            | Description | Notes |
| ----------- | ------------------------------- | ----------- | ----- |
| **body**    | [**ReportInfo**](ReportInfo.md) | emailDto    |
| **dash_id** | **Integer**                     | dashId      |

### Return type

[**MailReportResponse**](MailReportResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# **toggle_enabled_using_put1**

> SubscriptionResponse toggle_enabled_using_put1(bodyupdateable_subscription_id)

Toggle subscription status

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

api_instance = SematextCloud::SubscriptionsApi.new
body = SematextCloud::UpdateSubscriptionDto.new # UpdateSubscriptionDto | dto
updateable_subscription_id = 789 # Integer | updateableSubscriptionId


begin
  #Toggle subscription status
  result = api_instance.toggle_enabled_using_put1(bodyupdateable_subscription_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->toggle_enabled_using_put1: #{e}"
end
```

### Parameters

| Name                           | Type                                                  | Description              | Notes |
| ------------------------------ | ----------------------------------------------------- | ------------------------ | ----- |
| **body**                       | [**UpdateSubscriptionDto**](UpdateSubscriptionDto.md) | dto                      |
| **updateable_subscription_id** | **Integer**                                           | updateableSubscriptionId |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# **update_for_app_using_put**

> SubscriptionResponse update_for_app_using_put(bodyapp_id)

Update App subscription

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

api_instance = SematextCloud::SubscriptionsApi.new
body = SematextCloud::SubscriptionDto.new # SubscriptionDto | subscription
app_id = 789 # Integer | appId


begin
  #Update App subscription
  result = api_instance.update_for_app_using_put(bodyapp_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->update_for_app_using_put: #{e}"
end
```

### Parameters

| Name       | Type                                      | Description  | Notes |
| ---------- | ----------------------------------------- | ------------ | ----- |
| **body**   | [**SubscriptionDto**](SubscriptionDto.md) | subscription |
| **app_id** | **Integer**                               | appId        |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# **update_for_dash_using_put1**

> SubscriptionResponse update_for_dash_using_put1(bodydash_id)

Update dashboard subscription

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

api_instance = SematextCloud::SubscriptionsApi.new
body = SematextCloud::SubscriptionDashboardDto.new # SubscriptionDashboardDto | subscription
dash_id = 789 # Integer | dashId


begin
  #Update dashboard subscription
  result = api_instance.update_for_dash_using_put1(bodydash_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling SubscriptionsApi->update_for_dash_using_put1: #{e}"
end
```

### Parameters

| Name        | Type                                                        | Description  | Notes |
| ----------- | ----------------------------------------------------------- | ------------ | ----- |
| **body**    | [**SubscriptionDashboardDto**](SubscriptionDashboardDto.md) | subscription |
| **dash_id** | **Integer**                                                 | dashId       |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
