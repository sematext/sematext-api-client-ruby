=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module stcloud
  class LogsUsageApiControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # getForRange
    # @param app_id appId
    # @param from from
    # @param to to
    # @param [Hash] opts the optional parameters
    # @return [UsageResponse]
    def get_for_range_using_get(app_id, from, to, opts = {})
      data, _status_code, _headers = get_for_range_using_get_with_http_info(app_id, from, to, opts)
      data
    end

    # getForRange
    # @param app_id appId
    # @param from from
    # @param to to
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsageResponse, Integer, Hash)>] UsageResponse data, response status code and response headers
    def get_for_range_using_get_with_http_info(app_id, from, to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsUsageApiControllerApi.get_for_range_using_get ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling LogsUsageApiControllerApi.get_for_range_using_get"
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling LogsUsageApiControllerApi.get_for_range_using_get"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling LogsUsageApiControllerApi.get_for_range_using_get"
      end
      # resource path
      local_var_path = '/logsene-reports/api/v3/apps/{appId}/usage/{from}/{to}'.sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'from' + '}', from.to_s).sub('{' + 'to' + '}', to.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'UsageResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsUsageApiControllerApi#get_for_range_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
