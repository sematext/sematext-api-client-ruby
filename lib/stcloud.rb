=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

# Common files
require 'stcloud/api_client'
require 'stcloud/api_error'
require 'stcloud/version'
require 'stcloud/configuration'

# Models
require 'stcloud/models/alert_notification'
require 'stcloud/models/alert_notification_request'
require 'stcloud/models/alert_rule'
require 'stcloud/models/alert_rule_response'
require 'stcloud/models/alert_rule_response_entry'
require 'stcloud/models/alert_rule_schedule_time_range_dto'
require 'stcloud/models/alert_rule_schedule_weekday_dto'
require 'stcloud/models/alert_rules_response'
require 'stcloud/models/alert_rules_response_entry'
require 'stcloud/models/app'
require 'stcloud/models/app_description'
require 'stcloud/models/app_metadata'
require 'stcloud/models/app_response'
require 'stcloud/models/app_response_entry'
require 'stcloud/models/app_types_response'
require 'stcloud/models/app_types_response_entry'
require 'stcloud/models/apps_response'
require 'stcloud/models/apps_response_entry'
require 'stcloud/models/basic_auth_method_dto'
require 'stcloud/models/basic_organization_dto'
require 'stcloud/models/billing_info'
require 'stcloud/models/charges_details_response_dto'
require 'stcloud/models/cloud_watch_settings'
require 'stcloud/models/cloud_watch_settings_response'
require 'stcloud/models/cloud_watch_settings_response_entry'
require 'stcloud/models/create_app_info'
require 'stcloud/models/create_token_dto'
require 'stcloud/models/daily_dto'
require 'stcloud/models/day_usage_data'
require 'stcloud/models/dimension'
require 'stcloud/models/error'
require 'stcloud/models/event_dto'
require 'stcloud/models/filter_value'
require 'stcloud/models/generic_api_response'
require 'stcloud/models/generic_map_based_api_response'
require 'stcloud/models/invitation'
require 'stcloud/models/invoice'
require 'stcloud/models/invoice_response'
require 'stcloud/models/invoice_response_entry'
require 'stcloud/models/limit_change_event_dto'
require 'stcloud/models/mail_report_response'
require 'stcloud/models/mail_report_response_response_entry'
require 'stcloud/models/min_period_fee_period'
require 'stcloud/models/notification_integration'
require 'stcloud/models/notifications_response'
require 'stcloud/models/notifications_response_entry'
require 'stcloud/models/plan'
require 'stcloud/models/plans_response'
require 'stcloud/models/plans_response_entry'
require 'stcloud/models/report_info'
require 'stcloud/models/service_integration'
require 'stcloud/models/subscription'
require 'stcloud/models/subscription_dashboard_dto'
require 'stcloud/models/subscription_dto'
require 'stcloud/models/subscription_response'
require 'stcloud/models/subscription_response_entry'
require 'stcloud/models/subscriptions_response'
require 'stcloud/models/subscriptions_response_entry'
require 'stcloud/models/tag_names_response'
require 'stcloud/models/token_dto'
require 'stcloud/models/token_response'
require 'stcloud/models/token_response_entry'
require 'stcloud/models/tokens_response'
require 'stcloud/models/tokens_response_entry'
require 'stcloud/models/update_app_info'
require 'stcloud/models/update_plan_response'
require 'stcloud/models/update_plan_response_dto'
require 'stcloud/models/update_plan_response_entry'
require 'stcloud/models/update_subscription_dto'
require 'stcloud/models/update_token_dto'
require 'stcloud/models/usage_dto'
require 'stcloud/models/usage_multi_response'
require 'stcloud/models/usage_multi_response_entry'
require 'stcloud/models/usage_response'
require 'stcloud/models/usage_response_entry'
require 'stcloud/models/user_info'
require 'stcloud/models/user_permissions'
require 'stcloud/models/user_role'

# APIs
require 'stcloud/api/alert_notifications_api'
require 'stcloud/api/alerts_api'
require 'stcloud/api/apps_api'
require 'stcloud/api/aws_settings_controller_api'
require 'stcloud/api/billing_api'
require 'stcloud/api/logs_app_api'
require 'stcloud/api/logs_usage_api_controller_api'
require 'stcloud/api/monitoring_app_api'
require 'stcloud/api/reset_password_api'
require 'stcloud/api/subscriptions_api'
require 'stcloud/api/tag_api_controller_api'
require 'stcloud/api/tokens_api_controller_api'

module stcloud
  class << self
    # Customize default settings for the SDK using block.
    #   stcloud.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
