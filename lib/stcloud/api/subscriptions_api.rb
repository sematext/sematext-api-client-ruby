=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module stcloud
  class SubscriptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get subscriptions for an app
    # @param app_id appId
    # @param [Hash] opts the optional parameters
    # @return [GenericApiResponse]
    def list_using_get1(app_id, opts = {})
      data, _status_code, _headers = list_using_get1_with_http_info(app_id, opts)
      data
    end

    # Get subscriptions for an app
    # @param app_id appId
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenericApiResponse, Fixnum, Hash)>] GenericApiResponse data, response status code and response headers
    def list_using_get1_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.list_using_get1 ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SubscriptionsApi.list_using_get1"
      end
      # resource path
      local_var_path = '/users-web/api/v3/apps/{appId}/subscriptions'.sub('{' + 'appId' + '}', app_id.to_s)

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
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GenericApiResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#list_using_get1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Trigger emailing of report for an app
    # @param app_id appId
    # @param email_dto emailDto
    # @param [Hash] opts the optional parameters
    # @return [GenericApiResponse]
    def send_report_using_post(app_id, email_dto, opts = {})
      data, _status_code, _headers = send_report_using_post_with_http_info(app_id, email_dto, opts)
      data
    end

    # Trigger emailing of report for an app
    # @param app_id appId
    # @param email_dto emailDto
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenericApiResponse, Fixnum, Hash)>] GenericApiResponse data, response status code and response headers
    def send_report_using_post_with_http_info(app_id, email_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.send_report_using_post ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SubscriptionsApi.send_report_using_post"
      end
      # verify the required parameter 'email_dto' is set
      if @api_client.config.client_side_validation && email_dto.nil?
        fail ArgumentError, "Missing the required parameter 'email_dto' when calling SubscriptionsApi.send_report_using_post"
      end
      # resource path
      local_var_path = '/users-web/api/v3/apps/{appId}/report/send'.sub('{' + 'appId' + '}', app_id.to_s)

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
      post_body = @api_client.object_to_http_body(email_dto)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GenericApiResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#send_report_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
