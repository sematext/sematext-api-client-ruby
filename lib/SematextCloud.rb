=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

# Common files
require 'SematextCloud/api_client'
require 'SematextCloud/api_error'
require 'SematextCloud/version'
require 'SematextCloud/configuration'

# Models
require 'SematextCloud/models/alert_notification_request'
require 'SematextCloud/models/alert_rule'
require 'SematextCloud/models/alert_rule_schedule_time_range_dto'
require 'SematextCloud/models/alert_rule_schedule_weekday_dto'
require 'SematextCloud/models/app'
require 'SematextCloud/models/app_description'
require 'SematextCloud/models/app_metadata'
require 'SematextCloud/models/basic_auth_method_dto'
require 'SematextCloud/models/basic_organization_dto'
require 'SematextCloud/models/billing_info'
require 'SematextCloud/models/cloud_watch_settings'
require 'SematextCloud/models/create_app_info'
require 'SematextCloud/models/data_series_filter'
require 'SematextCloud/models/data_series_request'
require 'SematextCloud/models/error'
require 'SematextCloud/models/filter_value'
require 'SematextCloud/models/generic_api_response'
require 'SematextCloud/models/invitation'
require 'SematextCloud/models/notification_integration'
require 'SematextCloud/models/plan'
require 'SematextCloud/models/report_info'
require 'SematextCloud/models/saved_query'
require 'SematextCloud/models/service_integration'
require 'SematextCloud/models/update_app_info'
require 'SematextCloud/models/user_info'
require 'SematextCloud/models/user_permissions'
require 'SematextCloud/models/user_role'

# APIs
require 'SematextCloud/api/alert_notifications_api'
require 'SematextCloud/api/alerts_api'
require 'SematextCloud/api/apps_api'
require 'SematextCloud/api/aws_settings_controller_api'
require 'SematextCloud/api/billing_api'
require 'SematextCloud/api/logs_app_api'
require 'SematextCloud/api/metrics_api'
require 'SematextCloud/api/monitoring_app_api'
require 'SematextCloud/api/reset_password_api'
require 'SematextCloud/api/saved_queries_api'
require 'SematextCloud/api/subscriptions_api'
require 'SematextCloud/api/tag_api_controller_api'

module SematextCloud
  class << self
    # Customize default settings for the SDK using block.
    #   SematextCloud.configure do |config|
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
