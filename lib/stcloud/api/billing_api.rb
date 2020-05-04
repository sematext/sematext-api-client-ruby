=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module stcloud
  class BillingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get invoice details
    # @param service service
    # @param year year
    # @param month month
    # @param [Hash] opts the optional parameters
    # @return [GenericApiResponse]
    def get_detailed_invoice_using_get(service, year, month, opts = {})
      data, _status_code, _headers = get_detailed_invoice_using_get_with_http_info(service, year, month, opts)
      data
    end

    # Get invoice details
    # @param service service
    # @param year year
    # @param month month
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenericApiResponse, Fixnum, Hash)>] GenericApiResponse data, response status code and response headers
    def get_detailed_invoice_using_get_with_http_info(service, year, month, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingApi.get_detailed_invoice_using_get ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling BillingApi.get_detailed_invoice_using_get"
      end
      # verify the required parameter 'year' is set
      if @api_client.config.client_side_validation && year.nil?
        fail ArgumentError, "Missing the required parameter 'year' when calling BillingApi.get_detailed_invoice_using_get"
      end
      # verify the required parameter 'month' is set
      if @api_client.config.client_side_validation && month.nil?
        fail ArgumentError, "Missing the required parameter 'month' when calling BillingApi.get_detailed_invoice_using_get"
      end
      # resource path
      local_var_path = '/users-web/api/v3/billing/invoice/{service}/{year}/{month}'.sub('{' + 'service' + '}', service.to_s).sub('{' + 'year' + '}', year.to_s).sub('{' + 'month' + '}', month.to_s)

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
        @api_client.config.logger.debug "API called: BillingApi#get_detailed_invoice_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get available plans
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :integration_id integrationId
    # @option opts [String] :app_type appType
    # @return [GenericApiResponse]
    def list_available_plans_using_get(opts = {})
      data, _status_code, _headers = list_available_plans_using_get_with_http_info(opts)
      data
    end

    # Get available plans
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :integration_id integrationId
    # @option opts [String] :app_type appType
    # @return [Array<(GenericApiResponse, Fixnum, Hash)>] GenericApiResponse data, response status code and response headers
    def list_available_plans_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingApi.list_available_plans_using_get ...'
      end
      # resource path
      local_var_path = '/users-web/api/v3/billing/availablePlans'

      # query parameters
      query_params = {}
      query_params[:'integrationId'] = opts[:'integration_id'] if !opts[:'integration_id'].nil?
      query_params[:'appType'] = opts[:'app_type'] if !opts[:'app_type'].nil?

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
        @api_client.config.logger.debug "API called: BillingApi#list_available_plans_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update plan for an app
    # @param app_id appId
    # @param dto dto
    # @param [Hash] opts the optional parameters
    # @return [GenericApiResponse]
    def update_plan_using_put(app_id, dto, opts = {})
      data, _status_code, _headers = update_plan_using_put_with_http_info(app_id, dto, opts)
      data
    end

    # Update plan for an app
    # @param app_id appId
    # @param dto dto
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenericApiResponse, Fixnum, Hash)>] GenericApiResponse data, response status code and response headers
    def update_plan_using_put_with_http_info(app_id, dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingApi.update_plan_using_put ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling BillingApi.update_plan_using_put"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling BillingApi.update_plan_using_put"
      end
      # resource path
      local_var_path = '/users-web/api/v3/billing/info/{appId}'.sub('{' + 'appId' + '}', app_id.to_s)

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
      post_body = @api_client.object_to_http_body(dto)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GenericApiResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#update_plan_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
