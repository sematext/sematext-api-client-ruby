# SematextCloud::AlertsApi

All URIs are relative to */*

| Method                                                                                  | HTTP request                                                 | Description                |
| --------------------------------------------------------------------------------------- | ------------------------------------------------------------ | -------------------------- |
| [**create_alert_using_post**](AlertsApi.md#create_alert_using_post)                     | **POST** /users-web/api/v3/alerts                            | Create alert rule          |
| [**delete_alert_rule_using_delete**](AlertsApi.md#delete_alert_rule_using_delete)       | **DELETE** /users-web/api/v3/alerts/{updateableAlertId}      | Delete alert rule          |
| [**disable_alert_rule_using_put**](AlertsApi.md#disable_alert_rule_using_put)           | **PUT** /users-web/api/v3/alerts/{updateableAlertId}/disable | Disable alert rule         |
| [**enable_alert_rule_using_put**](AlertsApi.md#enable_alert_rule_using_put)             | **PUT** /users-web/api/v3/alerts/{updateableAlertId}/enable  | Enable alert rule          |
| [**get_alert_rules_for_app_using_get**](AlertsApi.md#get_alert_rules_for_app_using_get) | **GET** /users-web/api/v3/apps/{appId}/alerts                | Get alert rules for an app |

# **create_alert_using_post**

> AlertRuleResponse create_alert_using_post(body)

Create alert rule

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

api_instance = SematextCloud::AlertsApi.new
body = SematextCloud::AlertRule.new # AlertRule | dto


begin
  #Create alert rule
  result = api_instance.create_alert_using_post(body)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AlertsApi->create_alert_using_post: #{e}"
end
```

### Parameters

| Name     | Type                          | Description | Notes |
| -------- | ----------------------------- | ----------- | ----- |
| **body** | [**AlertRule**](AlertRule.md) | dto         |

### Return type

[**AlertRuleResponse**](AlertRuleResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# **delete_alert_rule_using_delete**

> GenericMapBasedApiResponse delete_alert_rule_using_delete(updateable_alert_id)

Delete alert rule

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

api_instance = SematextCloud::AlertsApi.new
updateable_alert_id = 789 # Integer | updateableAlertId


begin
  #Delete alert rule
  result = api_instance.delete_alert_rule_using_delete(updateable_alert_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AlertsApi->delete_alert_rule_using_delete: #{e}"
end
```

### Parameters

| Name                    | Type        | Description       | Notes |
| ----------------------- | ----------- | ----------------- | ----- |
| **updateable_alert_id** | **Integer** | updateableAlertId |

### Return type

[**GenericMapBasedApiResponse**](GenericMapBasedApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **disable_alert_rule_using_put**

> GenericMapBasedApiResponse disable_alert_rule_using_put(updateable_alert_id)

Disable alert rule

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

api_instance = SematextCloud::AlertsApi.new
updateable_alert_id = 789 # Integer | updateableAlertId


begin
  #Disable alert rule
  result = api_instance.disable_alert_rule_using_put(updateable_alert_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AlertsApi->disable_alert_rule_using_put: #{e}"
end
```

### Parameters

| Name                    | Type        | Description       | Notes |
| ----------------------- | ----------- | ----------------- | ----- |
| **updateable_alert_id** | **Integer** | updateableAlertId |

### Return type

[**GenericMapBasedApiResponse**](GenericMapBasedApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **enable_alert_rule_using_put**

> GenericMapBasedApiResponse enable_alert_rule_using_put(updateable_alert_id)

Enable alert rule

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

api_instance = SematextCloud::AlertsApi.new
updateable_alert_id = 789 # Integer | updateableAlertId


begin
  #Enable alert rule
  result = api_instance.enable_alert_rule_using_put(updateable_alert_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AlertsApi->enable_alert_rule_using_put: #{e}"
end
```

### Parameters

| Name                    | Type        | Description       | Notes |
| ----------------------- | ----------- | ----------------- | ----- |
| **updateable_alert_id** | **Integer** | updateableAlertId |

### Return type

[**GenericMapBasedApiResponse**](GenericMapBasedApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **get_alert_rules_for_app_using_get**

> AlertRulesResponse get_alert_rules_for_app_using_get(app_id)

Get alert rules for an app

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

api_instance = SematextCloud::AlertsApi.new
app_id = 789 # Integer | appId


begin
  #Get alert rules for an app
  result = api_instance.get_alert_rules_for_app_using_get(app_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AlertsApi->get_alert_rules_for_app_using_get: #{e}"
end
```

### Parameters

| Name       | Type        | Description | Notes |
| ---------- | ----------- | ----------- | ----- |
| **app_id** | **Integer** | appId       |

### Return type

[**AlertRulesResponse**](AlertRulesResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
