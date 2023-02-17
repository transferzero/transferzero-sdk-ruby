=begin
#BitPesa Private API

#API specification used for internal BitPesa endpoints

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'uri'

module TransferZero
  class CurrencyInfoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end


    # Getting a list of possible requested currencies
    # Fetches a list of currencies available to use in other API requests. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier.
    # @param [Hash] opts the optional parameters
    # @return [CurrencyListResponse]
    def info_currencies(opts = {})
      data, _status_code, _headers = info_currencies_with_http_info(opts)
      data
    end

    # Getting a list of possible requested currencies
    # Fetches a list of currencies available to use in other API requests. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CurrencyListResponse, Fixnum, Hash)>] CurrencyListResponse data, response status code and response headers
    def info_currencies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrencyInfoApi.info_currencies ...'
      end
      # resource path
      local_var_path = '/info/currencies'

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
        :return_type => 'CurrencyListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrencyInfoApi#info_currencies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Getting a list of possible input currencies
    # Fetches a list of currencies available to use as the input currency in other API requests. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier. Use this endpoint to determine the current exchange rate from a specific input currency to any output currency that's available. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sender_id Allows the scoping of the results by &#x60;sender_id&#x60; (optional).  Example: &#x60;/v1/info/currencies/in?sender_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
    # @return [CurrencyExchangeListResponse]
    def info_currencies_in(opts = {})
      data, _status_code, _headers = info_currencies_in_with_http_info(opts)
      data
    end

    # Getting a list of possible input currencies
    # Fetches a list of currencies available to use as the input currency in other API requests. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier. Use this endpoint to determine the current exchange rate from a specific input currency to any output currency that&#39;s available. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sender_id Allows the scoping of the results by &#x60;sender_id&#x60; (optional).  Example: &#x60;/v1/info/currencies/in?sender_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
    # @return [Array<(CurrencyExchangeListResponse, Fixnum, Hash)>] CurrencyExchangeListResponse data, response status code and response headers
    def info_currencies_in_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrencyInfoApi.info_currencies_in ...'
      end
      # resource path
      local_var_path = '/info/currencies/in'

      # query parameters
      query_params = {}
      query_params[:'sender_id'] = opts[:'sender_id'] if !opts[:'sender_id'].nil?

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
        :return_type => 'CurrencyExchangeListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrencyInfoApi#info_currencies_in\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Getting a list of possible output currencies
    # Fetches a list of currencies available to use as the output currency and their exchange rates against the available input currencies. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sender_id Allows the scoping of the results by &#x60;sender_id&#x60; (optional).  Example: &#x60;/v1/info/currencies/out?sender_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
    # @return [CurrencyExchangeListResponse]
    def info_currencies_out(opts = {})
      data, _status_code, _headers = info_currencies_out_with_http_info(opts)
      data
    end

    # Getting a list of possible output currencies
    # Fetches a list of currencies available to use as the output currency and their exchange rates against the available input currencies. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sender_id Allows the scoping of the results by &#x60;sender_id&#x60; (optional).  Example: &#x60;/v1/info/currencies/out?sender_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
    # @return [Array<(CurrencyExchangeListResponse, Fixnum, Hash)>] CurrencyExchangeListResponse data, response status code and response headers
    def info_currencies_out_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrencyInfoApi.info_currencies_out ...'
      end
      # resource path
      local_var_path = '/info/currencies/out'

      # query parameters
      query_params = {}
      query_params[:'sender_id'] = opts[:'sender_id'] if !opts[:'sender_id'].nil?

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
        :return_type => 'CurrencyExchangeListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrencyInfoApi#info_currencies_out\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
