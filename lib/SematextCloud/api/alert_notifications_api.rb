=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module SematextCloud
  class AlertNotificationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get alert notifications for an app
    # Default value of interval is 1d
    # @param app_id appId
    # @param time_interval Time Interval
    # @param [Hash] opts the optional parameters
    # @return [GenericApiResponse]
    def get_alert_notifications_for_app_using_post(app_id, time_interval, opts = {})
      data, _status_code, _headers = get_alert_notifications_for_app_using_post_with_http_info(app_id, time_interval, opts)
      data
    end

    # Get alert notifications for an app
    # Default value of interval is 1d
    # @param app_id appId
    # @param time_interval Time Interval
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenericApiResponse, Fixnum, Hash)>] GenericApiResponse data, response status code and response headers
    def get_alert_notifications_for_app_using_post_with_http_info(app_id, time_interval, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlertNotificationsApi.get_alert_notifications_for_app_using_post ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AlertNotificationsApi.get_alert_notifications_for_app_using_post"
      end
      # verify the required parameter 'time_interval' is set
      if @api_client.config.client_side_validation && time_interval.nil?
        fail ArgumentError, "Missing the required parameter 'time_interval' when calling AlertNotificationsApi.get_alert_notifications_for_app_using_post"
      end
      # resource path
      local_var_path = '/users-web/api/v3/apps/{appId}/notifications/alerts'.sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(time_interval)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GenericApiResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlertNotificationsApi#get_alert_notifications_for_app_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get alert notifications for a user
    # Default value of interval is 1d
    # @param time_interval Time Interval
    # @param [Hash] opts the optional parameters
    # @return [GenericApiResponse]
    def get_alert_notifications_for_user_using_post(time_interval, opts = {})
      data, _status_code, _headers = get_alert_notifications_for_user_using_post_with_http_info(time_interval, opts)
      data
    end

    # Get alert notifications for a user
    # Default value of interval is 1d
    # @param time_interval Time Interval
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenericApiResponse, Fixnum, Hash)>] GenericApiResponse data, response status code and response headers
    def get_alert_notifications_for_user_using_post_with_http_info(time_interval, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlertNotificationsApi.get_alert_notifications_for_user_using_post ...'
      end
      # verify the required parameter 'time_interval' is set
      if @api_client.config.client_side_validation && time_interval.nil?
        fail ArgumentError, "Missing the required parameter 'time_interval' when calling AlertNotificationsApi.get_alert_notifications_for_user_using_post"
      end
      # resource path
      local_var_path = '/users-web/api/v3/notifications/alerts'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(time_interval)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GenericApiResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlertNotificationsApi#get_alert_notifications_for_user_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
