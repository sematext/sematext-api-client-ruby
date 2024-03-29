=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

module SematextCloud
  class AwsSettingsControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Update App's AWS CloudWatch settings
    # Applicable only for AWS Apps
    # @param body dto
    # @param app_id appId
    # @param [Hash] opts the optional parameters
    # @return [CloudWatchSettingsResponse]
    def update_using_put(body, app_id, opts = {})
      data, _status_code, _headers = update_using_put_with_http_info(body, app_id, opts)
      data
    end

    # Update App&#x27;s AWS CloudWatch settings
    # Applicable only for AWS Apps
    # @param body dto
    # @param app_id appId
    # @param [Hash] opts the optional parameters
    # @return [Array<(CloudWatchSettingsResponse, Integer, Hash)>] CloudWatchSettingsResponse data, response status code and response headers
    def update_using_put_with_http_info(body, app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AwsSettingsControllerApi.update_using_put ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AwsSettingsControllerApi.update_using_put"
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AwsSettingsControllerApi.update_using_put"
      end
      # resource path
      local_var_path = '/users-web/api/v3/apps/{appId}/aws'.sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'CloudWatchSettingsResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AwsSettingsControllerApi#update_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
