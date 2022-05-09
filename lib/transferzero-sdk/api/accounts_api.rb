=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'uri'

module TransferZero
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end


    # Fetches account balance for specified currrency
    # Fetches account balance for specified currrency, and returns current balance and associated currency code
    # @param currency Currency code of account balance to fetch  Example: &#x60;/v1/accounts/USD&#x60;
    # @param [Hash] opts the optional parameters
    # @return [AccountResponse]
    def get_account(currency, opts = {})
      data, _status_code, _headers = get_account_with_http_info(currency, opts)
      data
    end

    # Fetches account balance for specified currrency
    # Fetches account balance for specified currrency, and returns current balance and associated currency code
    # @param currency Currency code of account balance to fetch  Example: &#x60;/v1/accounts/USD&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountResponse, Fixnum, Hash)>] AccountResponse data, response status code and response headers
    def get_account_with_http_info(currency, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.get_account ...'
      end
      # verify the required parameter 'currency' is set
      if @api_client.config.client_side_validation && currency.nil?
        fail ArgumentError, "Missing the required parameter 'currency' when calling AccountsApi.get_account"
      end
      # resource path
      local_var_path = '/accounts/{Currency}'.sub('{' + 'Currency' + '}', currency.to_s)

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
        :return_type => 'AccountResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    def get_accounts_all(opts = {})
      result = []
      response = get_accounts(opts)
      result += response["object"]
      while next_page = response["meta"]["pagination"]["next_page"]
        response = get_accounts(opts.merge(page: next_page))
        result += response["object"]
      end
      result
    end

    # Fetches account balances for all currencies
    # Fetches account balances for all currencies, and returns an array of the current balances and associated currency codes.
    # @param [Hash] opts the optional parameters
    # @return [AccountListResponse]
    def get_accounts(opts = {})
      data, _status_code, _headers = get_accounts_with_http_info(opts)
      data
    end

    # Fetches account balances for all currencies
    # Fetches account balances for all currencies, and returns an array of the current balances and associated currency codes.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountListResponse, Fixnum, Hash)>] AccountListResponse data, response status code and response headers
    def get_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.get_accounts ...'
      end
      # resource path
      local_var_path = '/accounts'

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
        :return_type => 'AccountListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
