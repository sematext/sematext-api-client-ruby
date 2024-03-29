=begin
#Sematext Cloud API

#API Explorer provides access and documentation for Sematext REST API. The REST API requires the API Key to be sent as part of `Authorization` header. E.g.: `Authorization : apiKey e5f18450-205a-48eb-8589-7d49edaea813`.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

module SematextCloud
  class TokensApiControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create new app token
    # @param body dto
    # @param app_id appId
    # @param [Hash] opts the optional parameters
    # @return [TokenResponse]
    def create_app_token1(body, app_id, opts = {})
      data, _status_code, _headers = create_app_token1_with_http_info(body, app_id, opts)
      data
    end

    # Create new app token
    # @param body dto
    # @param app_id appId
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def create_app_token1_with_http_info(body, app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApiControllerApi.create_app_token1 ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TokensApiControllerApi.create_app_token1"
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling TokensApiControllerApi.create_app_token1"
      end
      # resource path
      local_var_path = '/users-web/api/v3/apps/{appId}/tokens'.sub('{' + 'appId' + '}', app_id.to_s)

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

      return_type = opts[:return_type] || 'TokenResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApiControllerApi#create_app_token1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete app token
    # @param app_id appId
    # @param token_id tokenId
    # @param [Hash] opts the optional parameters
    # @return [GenericMapBasedApiResponse]
    def delete_app_token1(app_id, token_id, opts = {})
      data, _status_code, _headers = delete_app_token1_with_http_info(app_id, token_id, opts)
      data
    end

    # Delete app token
    # @param app_id appId
    # @param token_id tokenId
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenericMapBasedApiResponse, Integer, Hash)>] GenericMapBasedApiResponse data, response status code and response headers
    def delete_app_token1_with_http_info(app_id, token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApiControllerApi.delete_app_token1 ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling TokensApiControllerApi.delete_app_token1"
      end
      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling TokensApiControllerApi.delete_app_token1"
      end
      # resource path
      local_var_path = '/users-web/api/v3/apps/{appId}/tokens/{tokenId}'.sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'tokenId' + '}', token_id.to_s)

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

      return_type = opts[:return_type] || 'GenericMapBasedApiResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApiControllerApi#delete_app_token1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get app available tokens
    # @param app_id appId
    # @param [Hash] opts the optional parameters
    # @return [TokensResponse]
    def get_app_tokens1(app_id, opts = {})
      data, _status_code, _headers = get_app_tokens1_with_http_info(app_id, opts)
      data
    end

    # Get app available tokens
    # @param app_id appId
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokensResponse, Integer, Hash)>] TokensResponse data, response status code and response headers
    def get_app_tokens1_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApiControllerApi.get_app_tokens1 ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling TokensApiControllerApi.get_app_tokens1"
      end
      # resource path
      local_var_path = '/users-web/api/v3/apps/{appId}/tokens'.sub('{' + 'appId' + '}', app_id.to_s)

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

      return_type = opts[:return_type] || 'TokensResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApiControllerApi#get_app_tokens1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Regenerate app token)
    # @param app_id appId
    # @param token_id tokenId
    # @param [Hash] opts the optional parameters
    # @return [TokenResponse]
    def regenerate_app_token(app_id, token_id, opts = {})
      data, _status_code, _headers = regenerate_app_token_with_http_info(app_id, token_id, opts)
      data
    end

    # Regenerate app token)
    # @param app_id appId
    # @param token_id tokenId
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def regenerate_app_token_with_http_info(app_id, token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApiControllerApi.regenerate_app_token ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling TokensApiControllerApi.regenerate_app_token"
      end
      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling TokensApiControllerApi.regenerate_app_token"
      end
      # resource path
      local_var_path = '/users-web/api/v3/apps/{appId}/tokens/{tokenId}/regenerate'.sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'tokenId' + '}', token_id.to_s)

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

      return_type = opts[:return_type] || 'TokenResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApiControllerApi#regenerate_app_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update app token (enable/disable or name)
    # @param body dto
    # @param app_id appId
    # @param token_id tokenId
    # @param [Hash] opts the optional parameters
    # @return [TokenResponse]
    def update_app_token1(body, app_id, token_id, opts = {})
      data, _status_code, _headers = update_app_token1_with_http_info(body, app_id, token_id, opts)
      data
    end

    # Update app token (enable/disable or name)
    # @param body dto
    # @param app_id appId
    # @param token_id tokenId
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def update_app_token1_with_http_info(body, app_id, token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApiControllerApi.update_app_token1 ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TokensApiControllerApi.update_app_token1"
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling TokensApiControllerApi.update_app_token1"
      end
      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling TokensApiControllerApi.update_app_token1"
      end
      # resource path
      local_var_path = '/users-web/api/v3/apps/{appId}/tokens/{tokenId}'.sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'tokenId' + '}', token_id.to_s)

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

      return_type = opts[:return_type] || 'TokenResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApiControllerApi#update_app_token1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
