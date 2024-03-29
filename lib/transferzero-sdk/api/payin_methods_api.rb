=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'uri'

module TransferZero
  class PayinMethodsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end


    # Deleting a payin method
    # Initiates a cancellation request for the specified payin method
    # @param payin_method_id ID of the payin method to delete.  Example: &#x60;/v1/payin_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
    # @param [Hash] opts the optional parameters
    # @return [PayinMethodResponse]
    def delete_payin_method(payin_method_id, opts = {})
      data, _status_code, _headers = delete_payin_method_with_http_info(payin_method_id, opts)
      data
    end

    # Deleting a payin method
    # Initiates a cancellation request for the specified payin method
    # @param payin_method_id ID of the payin method to delete.  Example: &#x60;/v1/payin_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayinMethodResponse, Fixnum, Hash)>] PayinMethodResponse data, response status code and response headers
    def delete_payin_method_with_http_info(payin_method_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayinMethodsApi.delete_payin_method ...'
      end
      # verify the required parameter 'payin_method_id' is set
      if @api_client.config.client_side_validation && payin_method_id.nil?
        fail ArgumentError, "Missing the required parameter 'payin_method_id' when calling PayinMethodsApi.delete_payin_method"
      end
      # resource path
      local_var_path = '/payin_methods/{PayinMethod ID}'.sub('{' + 'PayinMethod ID' + '}', payin_method_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PayinMethodResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayinMethodsApi#delete_payin_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Fetching a payin method
    # Show a payin method by id
    # @param payin_method_id ID of the payin method to get.  Example: &#x60;/v1/payin_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
    # @param [Hash] opts the optional parameters
    # @return [PayinMethodResponse]
    def get_payin_method(payin_method_id, opts = {})
      data, _status_code, _headers = get_payin_method_with_http_info(payin_method_id, opts)
      data
    end

    # Fetching a payin method
    # Show a payin method by id
    # @param payin_method_id ID of the payin method to get.  Example: &#x60;/v1/payin_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayinMethodResponse, Fixnum, Hash)>] PayinMethodResponse data, response status code and response headers
    def get_payin_method_with_http_info(payin_method_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayinMethodsApi.get_payin_method ...'
      end
      # verify the required parameter 'payin_method_id' is set
      if @api_client.config.client_side_validation && payin_method_id.nil?
        fail ArgumentError, "Missing the required parameter 'payin_method_id' when calling PayinMethodsApi.get_payin_method"
      end
      # resource path
      local_var_path = '/payin_methods/{PayinMethod ID}'.sub('{' + 'PayinMethod ID' + '}', payin_method_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PayinMethodResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayinMethodsApi#get_payin_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Updating a payin method
    # Updates a single payin method by the Payin Method ID
    # @param payin_method_id ID of the payin method to get.  Example: &#x60;/v1/payin_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
    # @param payin_method 
    # @param [Hash] opts the optional parameters
    # @return [PayinMethodResponse]
    def patch_payin_method(payin_method_id, payin_method, opts = {})
      data, _status_code, _headers = patch_payin_method_with_http_info(payin_method_id, payin_method, opts)
      data
    end

    # Updating a payin method
    # Updates a single payin method by the Payin Method ID
    # @param payin_method_id ID of the payin method to get.  Example: &#x60;/v1/payin_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
    # @param payin_method 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayinMethodResponse, Fixnum, Hash)>] PayinMethodResponse data, response status code and response headers
    def patch_payin_method_with_http_info(payin_method_id, payin_method, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayinMethodsApi.patch_payin_method ...'
      end
      # verify the required parameter 'payin_method_id' is set
      if @api_client.config.client_side_validation && payin_method_id.nil?
        fail ArgumentError, "Missing the required parameter 'payin_method_id' when calling PayinMethodsApi.patch_payin_method"
      end
      # verify the required parameter 'payin_method' is set
      if @api_client.config.client_side_validation && payin_method.nil?
        fail ArgumentError, "Missing the required parameter 'payin_method' when calling PayinMethodsApi.patch_payin_method"
      end
      # resource path
      local_var_path = '/payin_methods/{PayinMethod ID}'.sub('{' + 'PayinMethod ID' + '}', payin_method_id.to_s)

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
      post_body = @api_client.object_to_http_body(payin_method)
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PayinMethodResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayinMethodsApi#patch_payin_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Retries PayinMethod
    # Retries the collection process for the payin method.  Please note only payin methods in `error` state can be retried.
    # @param payin_method_id ID of the payin method whose collection process should be retried  Example: &#x60;/v1/payin_methods/9d4d7b73-a94c-4979-ab57-09074fd55d33/retry&#x60;
    # @param [Hash] opts the optional parameters
    # @return [PayinMethodResponse]
    def retry_payin_method(payin_method_id, opts = {})
      data, _status_code, _headers = retry_payin_method_with_http_info(payin_method_id, opts)
      data
    end

    # Retries PayinMethod
    # Retries the collection process for the payin method.  Please note only payin methods in &#x60;error&#x60; state can be retried.
    # @param payin_method_id ID of the payin method whose collection process should be retried  Example: &#x60;/v1/payin_methods/9d4d7b73-a94c-4979-ab57-09074fd55d33/retry&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayinMethodResponse, Fixnum, Hash)>] PayinMethodResponse data, response status code and response headers
    def retry_payin_method_with_http_info(payin_method_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayinMethodsApi.retry_payin_method ...'
      end
      # verify the required parameter 'payin_method_id' is set
      if @api_client.config.client_side_validation && payin_method_id.nil?
        fail ArgumentError, "Missing the required parameter 'payin_method_id' when calling PayinMethodsApi.retry_payin_method"
      end
      # resource path
      local_var_path = '/payin_methods/{PayinMethod ID}/retry'.sub('{' + 'PayinMethod ID' + '}', payin_method_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PayinMethodResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayinMethodsApi#retry_payin_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
