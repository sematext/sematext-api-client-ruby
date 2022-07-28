# SematextCloud::AlertNotificationsApi

All URIs are relative to */*

| Method                                                                                                                    | HTTP request                                                 | Description                        |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ---------------------------------- |
| [**get_alert_notifications_for_app_using_post1**](AlertNotificationsApi.md#get_alert_notifications_for_app_using_post1)   | **POST** /users-web/api/v3/apps/{appId}/notifications/alerts | Get alert notifications for an app |
| [**get_alert_notifications_for_user_using_post1**](AlertNotificationsApi.md#get_alert_notifications_for_user_using_post1) | **POST** /users-web/api/v3/notifications/alerts              | Get alert notifications for a user |

# **get_alert_notifications_for_app_using_post1**

> NotificationsResponse get_alert_notifications_for_app_using_post1(bodyapp_id)

Get alert notifications for an app

Default value of interval is 1d

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

api_instance = SematextCloud::AlertNotificationsApi.new
body = SematextCloud::AlertNotificationRequest.new # AlertNotificationRequest | Time Interval
app_id = 789 # Integer | appId


begin
  #Get alert notifications for an app
  result = api_instance.get_alert_notifications_for_app_using_post1(bodyapp_id)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AlertNotificationsApi->get_alert_notifications_for_app_using_post1: #{e}"
end
```

### Parameters

| Name       | Type                                                        | Description   | Notes |
| ---------- | ----------------------------------------------------------- | ------------- | ----- |
| **body**   | [**AlertNotificationRequest**](AlertNotificationRequest.md) | Time Interval |
| **app_id** | **Integer**                                                 | appId         |

### Return type

[**NotificationsResponse**](NotificationsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# **get_alert_notifications_for_user_using_post1**

> NotificationsResponse get_alert_notifications_for_user_using_post1(body)

Get alert notifications for a user

Default value of interval is 1d

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

api_instance = SematextCloud::AlertNotificationsApi.new
body = SematextCloud::AlertNotificationRequest.new # AlertNotificationRequest | Time Interval


begin
  #Get alert notifications for a user
  result = api_instance.get_alert_notifications_for_user_using_post1(body)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AlertNotificationsApi->get_alert_notifications_for_user_using_post1: #{e}"
end
```

### Parameters

| Name     | Type                                                        | Description   | Notes |
| -------- | ----------------------------------------------------------- | ------------- | ----- |
| **body** | [**AlertNotificationRequest**](AlertNotificationRequest.md) | Time Interval |

### Return type

[**NotificationsResponse**](NotificationsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
