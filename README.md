
# <img src="https://sematext.com/wp-content/uploads/2020/09/just-octi-blue.png" valign="bottom" width="60px"/>**&nbsp;&nbsp;sematext-api-client-ruby**

<br>

>*A [Sematext Cloud](https://sematext.com/cloud/) API client, for interaction with Sematext Cloud solution monitoring, alerting and log shipping.*

<br>

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

<br>
One of a family of clients in following flavours:
<br>
<br>

* [sematext-api-client-javascript](https://github.com/sematext/sematext-api-client-javascript "Javascript")
* [sematext-api-client-rust](https://github.com/sematext/sematext-api-client-rust "Rust")
* [sematext-api-client-ruby](https://github.com/sematext/sematext-api-client-ruby "Ruby")
* [sematext-api-client-python](https://github.com/sematext/sematext-api-client-python "Python")
* [sematext-api-client-php](https://github.com/sematext/sematext-api-client-php "PHP")
* [sematext-api-client-java](https://github.com/sematext/sematext-api-client-java "Java")
* [sematext-api-client-go](https://github.com/sematext/sematext-api-client-go "Go/Golang")

<br>
Refer to below link for deeper information on the API itself.
<br>
<br>

* [Sematext Cloud API Reference](https://sematext.com/docs/api/ "API Reference")

<br>

## Contents

- [&nbsp;&nbsp;sematext-api-client-ruby](#sematext-api-client-ruby)
  - [Contents](#contents)
  - [Installation](#installation)
  - [Getting Started](#getting-started)
  - [Authentication](#authentication)
  - [Reference](#reference)
  - [Documentation for Models](#documentation-for-models)

<br>

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build SematextCloud.gemspec
```

Then either install the gem locally:

```shell
gem install ./SematextCloud-0.1.3.gem
```
(for development, run `gem install --dev ./SematextCloud-0.1.3.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'SematextCloud', '~> 0.1.3'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'SematextCloud', :git => 'https://github.com/sematext/sematext-api-client-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Authentication

This client code requires a Sematext API Access token to function. You can find this by logging into your [Sematext Cloud Account](https://apps.sematext.com/ui/account/api)


## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'SematextCloud'

# Setup authorization
SematextCloud.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SematextCloud::AlertNotificationsApi.new

app_id = 789 # Integer | appId

time_interval = SematextCloud::AlertNotificationRequest.new # AlertNotificationRequest | Time Interval


begin
  #Get alert notifications for an app
  result = api_instance.get_alert_notifications_for_app_using_post(app_id, time_interval)
  p result
rescue SematextCloud::ApiError => e
  puts "Exception when calling AlertNotificationsApi->get_alert_notifications_for_app_using_post: #{e}"
end

```

## Reference

All URIs are relative to *https://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SematextCloud::AlertNotificationsApi* | [**get_alert_notifications_for_app_using_post**](docs/AlertNotificationsApi.md#get_alert_notifications_for_app_using_post) | **POST** /users-web/api/v3/apps/{appId}/notifications/alerts | Get alert notifications for an app
*SematextCloud::AlertNotificationsApi* | [**get_alert_notifications_for_user_using_post**](docs/AlertNotificationsApi.md#get_alert_notifications_for_user_using_post) | **POST** /users-web/api/v3/notifications/alerts | Get alert notifications for a user
*SematextCloud::AlertsApi* | [**create_alert_using_post**](docs/AlertsApi.md#create_alert_using_post) | **POST** /users-web/api/v3/alerts | Create alert rule
*SematextCloud::AlertsApi* | [**delete_alert_rule_using_delete**](docs/AlertsApi.md#delete_alert_rule_using_delete) | **DELETE** /users-web/api/v3/alerts/{updateableAlertId} | Delete alert rule
*SematextCloud::AlertsApi* | [**disable_alert_rule_using_put**](docs/AlertsApi.md#disable_alert_rule_using_put) | **PUT** /users-web/api/v3/alerts/{updateableAlertId}/disable | Disable alert rule
*SematextCloud::AlertsApi* | [**enable_alert_rule_using_put**](docs/AlertsApi.md#enable_alert_rule_using_put) | **PUT** /users-web/api/v3/alerts/{updateableAlertId}/enable | Enable alert rule
*SematextCloud::AlertsApi* | [**get_alert_rules_for_app_using_get**](docs/AlertsApi.md#get_alert_rules_for_app_using_get) | **GET** /users-web/api/v3/apps/{appId}/alerts | Get alert rules for an app
*SematextCloud::AppsApi* | [**get_app_types_using_get**](docs/AppsApi.md#get_app_types_using_get) | **GET** /users-web/api/v3/apps/types | Get all App types supported for the account identified with apiKey
*SematextCloud::AppsApi* | [**get_using_get**](docs/AppsApi.md#get_using_get) | **GET** /users-web/api/v3/apps/{anyStateAppId} | Gets defails for one particular App
*SematextCloud::AppsApi* | [**invite_app_guests_using_post**](docs/AppsApi.md#invite_app_guests_using_post) | **POST** /users-web/api/v3/apps/guests | Invite guests to an app
*SematextCloud::AppsApi* | [**list_apps_users_using_get**](docs/AppsApi.md#list_apps_users_using_get) | **GET** /users-web/api/v3/apps/users | Get all users of apps accessible to this account
*SematextCloud::AppsApi* | [**list_using_get**](docs/AppsApi.md#list_using_get) | **GET** /users-web/api/v3/apps | Get all apps accessible by account identified with apiKey
*SematextCloud::AppsApi* | [**update_description_using_put**](docs/AppsApi.md#update_description_using_put) | **PUT** /users-web/api/v3/apps/{anyStateAppId}/description | Update description of the app
*SematextCloud::AppsApi* | [**update_using_put1**](docs/AppsApi.md#update_using_put1) | **PUT** /users-web/api/v3/apps/{anyStateAppId} | Update app
*SematextCloud::AwsSettingsControllerApi* | [**update_using_put**](docs/AwsSettingsControllerApi.md#update_using_put) | **PUT** /users-web/api/v3/apps/{appId}/aws | Update App's AWS CloudWatch settings
*SematextCloud::BillingApi* | [**get_detailed_invoice_using_get**](docs/BillingApi.md#get_detailed_invoice_using_get) | **GET** /users-web/api/v3/billing/invoice/{service}/{year}/{month} | Get invoice details
*SematextCloud::BillingApi* | [**list_available_plans_using_get**](docs/BillingApi.md#list_available_plans_using_get) | **GET** /users-web/api/v3/billing/availablePlans | Get available plans
*SematextCloud::BillingApi* | [**update_plan_using_put**](docs/BillingApi.md#update_plan_using_put) | **PUT** /users-web/api/v3/billing/info/{appId} | Update plan for an app
*SematextCloud::LogsAppApi* | [**create_logsene_application**](docs/LogsAppApi.md#create_logsene_application) | **POST** /logsene-reports/api/v3/apps | Create Logs App
*SematextCloud::MetricsApi* | [**list_data_series_using_post**](docs/MetricsApi.md#list_data_series_using_post) | **POST** /spm-reports/api/v3/apps/{appId}/metrics/data | Get metrics data points for an app
*SematextCloud::MetricsApi* | [**list_filters_using_post**](docs/MetricsApi.md#list_filters_using_post) | **POST** /spm-reports/api/v3/apps/{appId}/metrics/filters | Get metrics filters and their values for an app
*SematextCloud::MetricsApi* | [**list_metrics_keys_using_get**](docs/MetricsApi.md#list_metrics_keys_using_get) | **GET** /spm-reports/api/v3/apps/{appId}/metrics/keys | Get metrics keys for an app
*SematextCloud::MetricsApi* | [**list_metrics_using_get**](docs/MetricsApi.md#list_metrics_using_get) | **GET** /spm-reports/api/v3/apps/{appId}/metrics | Get metrics info for an app
*SematextCloud::MonitoringAppApi* | [**create_spm_application1**](docs/MonitoringAppApi.md#create_spm_application1) | **POST** /spm-reports/api/v3/apps | Create Monitoring App
*SematextCloud::ResetPasswordApi* | [**reset_password_using_post**](docs/ResetPasswordApi.md#reset_password_using_post) | **POST** /users-web/api/v3/account/password/reset | Reset Password
*SematextCloud::SavedQueriesApi* | [**delete_saved_query_using_delete**](docs/SavedQueriesApi.md#delete_saved_query_using_delete) | **DELETE** /users-web/api/v3/savedQueries/{updateableQueryId} | Delete saved query
*SematextCloud::SavedQueriesApi* | [**get_saved_queries_for_app_using_get**](docs/SavedQueriesApi.md#get_saved_queries_for_app_using_get) | **GET** /users-web/api/v3/apps/{appId}/savedQueries | Get saved queries for an app
*SematextCloud::SavedQueriesApi* | [**save_query_using_post**](docs/SavedQueriesApi.md#save_query_using_post) | **POST** /users-web/api/v3/savedQueries | Create saved query
*SematextCloud::SavedQueriesApi* | [**save_query_using_put**](docs/SavedQueriesApi.md#save_query_using_put) | **PUT** /users-web/api/v3/savedQueries/{updateableQueryId} | Update saved query
*SematextCloud::SubscriptionsApi* | [**list_using_get1**](docs/SubscriptionsApi.md#list_using_get1) | **GET** /users-web/api/v3/apps/{appId}/subscriptions | Get subscriptions for an app
*SematextCloud::SubscriptionsApi* | [**send_report_using_post**](docs/SubscriptionsApi.md#send_report_using_post) | **POST** /users-web/api/v3/apps/{appId}/report/send | Trigger emailing of report for an app
*SematextCloud::TagApiControllerApi* | [**get_tag_names_using_get**](docs/TagApiControllerApi.md#get_tag_names_using_get) | **GET** /spm-reports/api/v3/apps/{appIds}/tagNames | Gets tag names for the given application identifiers appearing in the given time frame.
*SematextCloud::TagApiControllerApi* | [**get_using_get1**](docs/TagApiControllerApi.md#get_using_get1) | **GET** /spm-reports/api/v3/apps/{appIds}/tags | Gets values for specified tags for the given application identifiers appearing in the given time frame.
*SematextCloud::TagApiControllerApi* | [**get_using_get2**](docs/TagApiControllerApi.md#get_using_get2) | **GET** /spm-reports/api/v3/apps/{appIds}/metrics/filters | Gets values for specified tags for the given application identifiers appearing in the given time frame.


## Documentation for Models

 - [SematextCloud::AlertNotificationRequest](docs/AlertNotificationRequest.md)
 - [SematextCloud::AlertRule](docs/AlertRule.md)
 - [SematextCloud::AlertRuleScheduleTimeRangeDto](docs/AlertRuleScheduleTimeRangeDto.md)
 - [SematextCloud::AlertRuleScheduleWeekdayDto](docs/AlertRuleScheduleWeekdayDto.md)
 - [SematextCloud::App](docs/App.md)
 - [SematextCloud::AppDescription](docs/AppDescription.md)
 - [SematextCloud::AppMetadata](docs/AppMetadata.md)
 - [SematextCloud::BasicAuthMethodDto](docs/BasicAuthMethodDto.md)
 - [SematextCloud::BasicOrganizationDto](docs/BasicOrganizationDto.md)
 - [SematextCloud::BillingInfo](docs/BillingInfo.md)
 - [SematextCloud::CloudWatchSettings](docs/CloudWatchSettings.md)
 - [SematextCloud::CreateAppInfo](docs/CreateAppInfo.md)
 - [SematextCloud::DataSeriesFilter](docs/DataSeriesFilter.md)
 - [SematextCloud::DataSeriesRequest](docs/DataSeriesRequest.md)
 - [SematextCloud::Error](docs/Error.md)
 - [SematextCloud::FilterValue](docs/FilterValue.md)
 - [SematextCloud::GenericApiResponse](docs/GenericApiResponse.md)
 - [SematextCloud::Invitation](docs/Invitation.md)
 - [SematextCloud::NotificationIntegration](docs/NotificationIntegration.md)
 - [SematextCloud::Plan](docs/Plan.md)
 - [SematextCloud::ReportInfo](docs/ReportInfo.md)
 - [SematextCloud::SavedQuery](docs/SavedQuery.md)
 - [SematextCloud::ServiceIntegration](docs/ServiceIntegration.md)
 - [SematextCloud::UpdateAppInfo](docs/UpdateAppInfo.md)
 - [SematextCloud::UserInfo](docs/UserInfo.md)
 - [SematextCloud::UserPermissions](docs/UserPermissions.md)
 - [SematextCloud::UserRole](docs/UserRole.md)
