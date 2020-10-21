
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

- [<img src="https://sematext.com/wp-content/uploads/2020/09/just-octi-blue.png" valign="bottom" width="60px"/>**&nbsp;&nbsp;sematext-api-client-ruby**](#img-srchttpssematextcomwp-contentuploads202009just-octi-bluepng-valignbottom-width60pxsematext-api-client-ruby)
  - [Contents](#contents)
  - [Installation](#installation)
    - [Build a gem](#build-a-gem)
    - [Install from Git](#install-from-git)
    - [Include the Ruby code directly](#include-the-ruby-code-directly)
  - [Authentication](#authentication)
  - [Getting Started](#getting-started)
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

| Class                               | Method                                                                                                                       | HTTP request                                                          | Description                                                                                             |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| *stcloud::AlertNotificationsApi*    | [**get_alert_notifications_for_app_using_post1**](docs/AlertNotificationsApi.md#get_alert_notifications_for_app_using_post1) | **POST** /users-web/api/v3/apps/{appId}/notifications/alerts          | Get alert notifications for an app                                                                      |
| *stcloud::AlertNotificationsApi*    | [**get_alert_notifications_for_user_using_post**](docs/AlertNotificationsApi.md#get_alert_notifications_for_user_using_post) | **POST** /users-web/api/v3/notifications/alerts                       | Get alert notifications for a user                                                                      |
| *stcloud::AlertsApi*                | [**create_alert_using_post1**](docs/AlertsApi.md#create_alert_using_post1)                                                   | **POST** /users-web/api/v3/alerts                                     | Create alert rule                                                                                       |
| *stcloud::AlertsApi*                | [**delete_alert_rule_using_delete1**](docs/AlertsApi.md#delete_alert_rule_using_delete1)                                     | **DELETE** /users-web/api/v3/alerts/{updateableAlertId}               | Delete alert rule                                                                                       |
| *stcloud::AlertsApi*                | [**disable_alert_rule_using_put**](docs/AlertsApi.md#disable_alert_rule_using_put)                                           | **PUT** /users-web/api/v3/alerts/{updateableAlertId}/disable          | Disable alert rule                                                                                      |
| *stcloud::AlertsApi*                | [**enable_alert_rule_using_put1**](docs/AlertsApi.md#enable_alert_rule_using_put1)                                           | **PUT** /users-web/api/v3/alerts/{updateableAlertId}/enable           | Enable alert rule                                                                                       |
| *stcloud::AlertsApi*                | [**get_alert_rules_for_app_using_get1**](docs/AlertsApi.md#get_alert_rules_for_app_using_get1)                               | **GET** /users-web/api/v3/apps/{appId}/alerts                         | Get alert rules for an app                                                                              |
| *stcloud::AppsApi*                  | [**delete_using_delete**](docs/AppsApi.md#delete_using_delete)                                                               | **DELETE** /users-web/api/v3/apps/{anyStateAppId}                     | delete                                                                                                  |
| *stcloud::AppsApi*                  | [**get_app_types_using_get1**](docs/AppsApi.md#get_app_types_using_get1)                                                     | **GET** /users-web/api/v3/apps/types                                  | Get all App types supported for the account identified with apiKey                                      |
| *stcloud::AppsApi*                  | [**get_using_get**](docs/AppsApi.md#get_using_get)                                                                           | **GET** /users-web/api/v3/apps/{anyStateAppId}                        | Gets defails for one particular App                                                                     |
| *stcloud::AppsApi*                  | [**invite_app_guests_using_post**](docs/AppsApi.md#invite_app_guests_using_post)                                             | **POST** /users-web/api/v3/apps/guests                                | Invite guests to an app                                                                                 |
| *stcloud::AppsApi*                  | [**list_apps_users_using_get**](docs/AppsApi.md#list_apps_users_using_get)                                                   | **GET** /users-web/api/v3/apps/users                                  | Get all users of apps accessible to this account                                                        |
| *stcloud::AppsApi*                  | [**list_using_get1**](docs/AppsApi.md#list_using_get1)                                                                       | **GET** /users-web/api/v3/apps                                        | Get all apps accessible by account identified with apiKey                                               |
| *stcloud::AppsApi*                  | [**update_description_using_put**](docs/AppsApi.md#update_description_using_put)                                             | **PUT** /users-web/api/v3/apps/{anyStateAppId}/description            | Update description of the app                                                                           |
| *stcloud::AppsApi*                  | [**update_using_put3**](docs/AppsApi.md#update_using_put3)                                                                   | **PUT** /users-web/api/v3/apps/{anyStateAppId}                        | Update app                                                                                              |
| *stcloud::AwsSettingsControllerApi* | [**update_using_put**](docs/AwsSettingsControllerApi.md#update_using_put)                                                    | **PUT** /users-web/api/v3/apps/{appId}/aws                            | Update App's AWS CloudWatch settings                                                                    |
| *stcloud::BillingApi*               | [**get_detailed_invoice_using_get1**](docs/BillingApi.md#get_detailed_invoice_using_get1)                                    | **GET** /users-web/api/v3/billing/invoice/{service}/{year}/{month}    | Get invoice details                                                                                     |
| *stcloud::BillingApi*               | [**list_available_plans_using_get1**](docs/BillingApi.md#list_available_plans_using_get1)                                    | **GET** /users-web/api/v3/billing/availablePlans                      | Get available plans                                                                                     |
| *stcloud::BillingApi*               | [**update_plan_using_put**](docs/BillingApi.md#update_plan_using_put)                                                        | **PUT** /users-web/api/v3/billing/info/{appId}                        | Update plan for an app                                                                                  |
| *stcloud::LogsAppApi*               | [**create_logsene_application**](docs/LogsAppApi.md#create_logsene_application)                                              | **POST** /logsene-reports/api/v3/apps                                 | Create Logs App                                                                                         |
| *stcloud::MetricsApi*               | [**list_data_series_using_post1**](docs/MetricsApi.md#list_data_series_using_post1)                                          | **POST** /spm-reports/api/v3/apps/{appId}/metrics/data                | Get metrics data points for an app                                                                      |
| *stcloud::MetricsApi*               | [**list_filters_using_post1**](docs/MetricsApi.md#list_filters_using_post1)                                                  | **POST** /spm-reports/api/v3/apps/{appId}/metrics/filters             | Get metrics filters and their values for an app                                                         |
| *stcloud::MetricsApi*               | [**list_metrics_keys_using_get1**](docs/MetricsApi.md#list_metrics_keys_using_get1)                                          | **GET** /spm-reports/api/v3/apps/{appId}/metrics/keys                 | Get metrics keys for an app                                                                             |
| *stcloud::MetricsApi*               | [**list_metrics_using_get**](docs/MetricsApi.md#list_metrics_using_get)                                                      | **GET** /spm-reports/api/v3/apps/{appId}/metrics                      | Get metrics info for an app                                                                             |
| *stcloud::MonitoringAppApi*         | [**create_spm_application**](docs/MonitoringAppApi.md#create_spm_application)                                                | **POST** /spm-reports/api/v3/apps                                     | Create Monitoring App                                                                                   |
| *stcloud::ResetPasswordApi*         | [**reset_password_using_post1**](docs/ResetPasswordApi.md#reset_password_using_post1)                                        | **POST** /users-web/api/v3/account/password/reset                     | Reset Password                                                                                          |
| *stcloud::SavedQueriesApi*          | [**delete_saved_query_using_delete**](docs/SavedQueriesApi.md#delete_saved_query_using_delete)                               | **DELETE** /users-web/api/v3/savedQueries/{updateableQueryId}         | Delete saved query                                                                                      |
| *stcloud::SavedQueriesApi*          | [**get_saved_queries_for_app_using_get**](docs/SavedQueriesApi.md#get_saved_queries_for_app_using_get)                       | **GET** /users-web/api/v3/apps/{appId}/savedQueries                   | Get saved queries for an app                                                                            |
| *stcloud::SavedQueriesApi*          | [**save_query_using_post**](docs/SavedQueriesApi.md#save_query_using_post)                                                   | **POST** /users-web/api/v3/savedQueries                               | Create saved query                                                                                      |
| *stcloud::SavedQueriesApi*          | [**save_query_using_put**](docs/SavedQueriesApi.md#save_query_using_put)                                                     | **PUT** /users-web/api/v3/savedQueries/{updateableQueryId}            | Update saved query                                                                                      |
| *stcloud::SubscriptionsApi*         | [**create_for_app_using_post**](docs/SubscriptionsApi.md#create_for_app_using_post)                                          | **POST** /users-web/api/v3/apps/{appId}/subscription                  | Create App subscription                                                                                 |
| *stcloud::SubscriptionsApi*         | [**create_for_dash_using_post1**](docs/SubscriptionsApi.md#create_for_dash_using_post1)                                      | **POST** /users-web/api/v3/dashboards/{dashId}/subscription           | Create dashboard subscription                                                                           |
| *stcloud::SubscriptionsApi*         | [**delete_using_delete2**](docs/SubscriptionsApi.md#delete_using_delete2)                                                    | **DELETE** /users-web/api/v3/subscriptions/{updateableSubscriptionId} | Delete subscription                                                                                     |
| *stcloud::SubscriptionsApi*         | [**list_using_get2**](docs/SubscriptionsApi.md#list_using_get2)                                                              | **GET** /users-web/api/v3/apps/{appId}/subscriptions                  | Get subscriptions for an App                                                                            |
| *stcloud::SubscriptionsApi*         | [**list_using_get5**](docs/SubscriptionsApi.md#list_using_get5)                                                              | **GET** /users-web/api/v3/subscriptions                               | Get current account's subscriptions                                                                     |
| *stcloud::SubscriptionsApi*         | [**send_app_report_using_post1**](docs/SubscriptionsApi.md#send_app_report_using_post1)                                      | **POST** /users-web/api/v3/apps/{appId}/report/send                   | Email an App report                                                                                     |
| *stcloud::SubscriptionsApi*         | [**send_dash_report_using_post1**](docs/SubscriptionsApi.md#send_dash_report_using_post1)                                    | **POST** /users-web/api/v3/dashboards/{dashId}/report/send            | Email a dashboard report                                                                                |
| *stcloud::SubscriptionsApi*         | [**toggle_enabled_using_put1**](docs/SubscriptionsApi.md#toggle_enabled_using_put1)                                          | **PUT** /users-web/api/v3/subscriptions/{updateableSubscriptionId}    | Toggle subscription status                                                                              |
| *stcloud::SubscriptionsApi*         | [**update_for_app_using_put1**](docs/SubscriptionsApi.md#update_for_app_using_put1)                                          | **PUT** /users-web/api/v3/apps/{appId}/subscription                   | Update App subscription                                                                                 |
| *stcloud::SubscriptionsApi*         | [**update_for_dash_using_put**](docs/SubscriptionsApi.md#update_for_dash_using_put)                                          | **PUT** /users-web/api/v3/dashboards/{dashId}/subscription            | Update dashboard subscription                                                                           |
| *stcloud::TagApiControllerApi*      | [**get_tag_names_using_get**](docs/TagApiControllerApi.md#get_tag_names_using_get)                                           | **GET** /spm-reports/api/v3/apps/{appIds}/tagNames                    | Gets tag names for the given application identifiers appearing in the given time frame.                 |
| *stcloud::TagApiControllerApi*      | [**get_using_get2**](docs/TagApiControllerApi.md#get_using_get2)                                                             | **GET** /spm-reports/api/v3/apps/{appIds}/metrics/filters             | Gets values for specified tags for the given application identifiers appearing in the given time frame. |
| *stcloud::TagApiControllerApi*      | [**get_using_get3**](docs/TagApiControllerApi.md#get_using_get3)                                                             | **GET** /spm-reports/api/v3/apps/{appIds}/tags                        | Gets values for specified tags for the given application identifiers appearing in the given time frame. |
| *stcloud::TokensApiControllerApi*   | [**create_app_token**](docs/TokensApiControllerApi.md#create_app_token)                                                      | **POST** /users-web/api/v3/apps/{appId}/tokens                        | Create new app token                                                                                    |
| *stcloud::TokensApiControllerApi*   | [**delete_app_token1**](docs/TokensApiControllerApi.md#delete_app_token1)                                                    | **DELETE** /users-web/api/v3/apps/{appId}/tokens/{tokenId}            | Delete app token                                                                                        |
| *stcloud::TokensApiControllerApi*   | [**get_app_tokens1**](docs/TokensApiControllerApi.md#get_app_tokens1)                                                        | **GET** /users-web/api/v3/apps/{appId}/tokens                         | Get app available tokens                                                                                |
| *stcloud::TokensApiControllerApi*   | [**regenerate_app_token**](docs/TokensApiControllerApi.md#regenerate_app_token)                                              | **POST** /users-web/api/v3/apps/{appId}/tokens/{tokenId}/regenerate   | Regenerate app token)                                                                                   |
| *stcloud::TokensApiControllerApi*   | [**update_app_token1**](docs/TokensApiControllerApi.md#update_app_token1)                                                    | **PUT** /users-web/api/v3/apps/{appId}/tokens/{tokenId}               | Update app token (enable/disable)                                                                       |


## Documentation for Models

 - [stcloud::AlertNotificationRequest](docs/AlertNotificationRequest.md)
 - [stcloud::AlertRule](docs/AlertRule.md)
 - [stcloud::AlertRuleScheduleTimeRangeDto](docs/AlertRuleScheduleTimeRangeDto.md)
 - [stcloud::AlertRuleScheduleWeekdayDto](docs/AlertRuleScheduleWeekdayDto.md)
 - [stcloud::App](docs/App.md)
 - [stcloud::AppDescription](docs/AppDescription.md)
 - [stcloud::AppMetadata](docs/AppMetadata.md)
 - [stcloud::BasicAuthMethodDto](docs/BasicAuthMethodDto.md)
 - [stcloud::BasicOrganizationDto](docs/BasicOrganizationDto.md)
 - [stcloud::BillingInfo](docs/BillingInfo.md)
 - [stcloud::CloudWatchSettings](docs/CloudWatchSettings.md)
 - [stcloud::CreateAppInfo](docs/CreateAppInfo.md)
 - [stcloud::CreateTokenDto](docs/CreateTokenDto.md)
 - [stcloud::DataSeriesFilter](docs/DataSeriesFilter.md)
 - [stcloud::DataSeriesRequest](docs/DataSeriesRequest.md)
 - [stcloud::Error](docs/Error.md)
 - [stcloud::FilterValue](docs/FilterValue.md)
 - [stcloud::GenericApiResponse](docs/GenericApiResponse.md)
 - [stcloud::Invitation](docs/Invitation.md)
 - [stcloud::NotificationIntegration](docs/NotificationIntegration.md)
 - [stcloud::Plan](docs/Plan.md)
 - [stcloud::ReportInfo](docs/ReportInfo.md)
 - [stcloud::SavedQuery](docs/SavedQuery.md)
 - [stcloud::ServiceIntegration](docs/ServiceIntegration.md)
 - [stcloud::SubscriptionDashboardDto](docs/SubscriptionDashboardDto.md)
 - [stcloud::SubscriptionDto](docs/SubscriptionDto.md)
 - [stcloud::UpdateAppInfo](docs/UpdateAppInfo.md)
 - [stcloud::UpdateSubscriptionDto](docs/UpdateSubscriptionDto.md)
 - [stcloud::UpdateTokenDto](docs/UpdateTokenDto.md)
 - [stcloud::UserInfo](docs/UserInfo.md)
 - [stcloud::UserPermissions](docs/UserPermissions.md)
 - [stcloud::UserRole](docs/UserRole.md)
