=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'uri'

module TransferZero
  class TransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end


    # Calculates transaction amounts for a transaction payload
    # Calculates the input, output and fee amounts for the recipients in a transaction payload
    # @param transaction_request 
    # @param [Hash] opts the optional parameters
    # @return [TransactionResponse]
    def calculate_transactions(transaction_request, opts = {})
      data, _status_code, _headers = calculate_transactions_with_http_info(transaction_request, opts)
      data
    end

    # Calculates transaction amounts for a transaction payload
    # Calculates the input, output and fee amounts for the recipients in a transaction payload
    # @param transaction_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionResponse, Fixnum, Hash)>] TransactionResponse data, response status code and response headers
    def calculate_transactions_with_http_info(transaction_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.calculate_transactions ...'
      end
      # verify the required parameter 'transaction_request' is set
      if @api_client.config.client_side_validation && transaction_request.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_request' when calling TransactionsApi.calculate_transactions"
      end
      # resource path
      local_var_path = '/transactions/calculate'

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
      post_body = @api_client.object_to_http_body(transaction_request)
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#calculate_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Creates a new transaction and funds it from account balance
    # This endpoint creates a transaction and funds it from an account balance. You must ensure that you have established an account with us in the pay-in currency of the transactions you wish to create, and that this account is sufficently funded, before calling this endpoint.  Note that the <pre>external_id</pre> field is required for requests to this endpoint.
    # @param transaction_request 
    # @param [Hash] opts the optional parameters
    # @return [TransactionResponse]
    def create_and_fund_transaction(transaction_request, opts = {})
      data, _status_code, _headers = create_and_fund_transaction_with_http_info(transaction_request, opts)
      data
    end

    # Creates a new transaction and funds it from account balance
    # This endpoint creates a transaction and funds it from an account balance. You must ensure that you have established an account with us in the pay-in currency of the transactions you wish to create, and that this account is sufficently funded, before calling this endpoint.  Note that the &lt;pre&gt;external_id&lt;/pre&gt; field is required for requests to this endpoint.
    # @param transaction_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionResponse, Fixnum, Hash)>] TransactionResponse data, response status code and response headers
    def create_and_fund_transaction_with_http_info(transaction_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.create_and_fund_transaction ...'
      end
      # verify the required parameter 'transaction_request' is set
      if @api_client.config.client_side_validation && transaction_request.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_request' when calling TransactionsApi.create_and_fund_transaction"
      end
      # resource path
      local_var_path = '/transactions/create_and_fund'

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
      post_body = @api_client.object_to_http_body(transaction_request)
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#create_and_fund_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Fetch a single transaction
    # Finds and returns a Transaction created by the requesting API key, using the provided Transaction ID.
    # @param transaction_id ID of the transaction.  Example: &#x60;/v1/transactions/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
    # @param [Hash] opts the optional parameters
    # @return [TransactionResponse]
    def get_transaction(transaction_id, opts = {})
      data, _status_code, _headers = get_transaction_with_http_info(transaction_id, opts)
      data
    end

    # Fetch a single transaction
    # Finds and returns a Transaction created by the requesting API key, using the provided Transaction ID.
    # @param transaction_id ID of the transaction.  Example: &#x60;/v1/transactions/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionResponse, Fixnum, Hash)>] TransactionResponse data, response status code and response headers
    def get_transaction_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.get_transaction ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TransactionsApi.get_transaction"
      end
      # resource path
      local_var_path = '/transactions/{Transaction ID}'.sub('{' + 'Transaction ID' + '}', transaction_id.to_s)

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
        :return_type => 'TransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#get_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    def get_transactions_all(opts = {})
      result = []
      response = get_transactions(opts)
      result += response["object"]
      while next_page = response["meta"]["pagination"]["next_page"]
        response = get_transactions(opts.merge(page: next_page))
        result += response["object"]
      end
      result
    end

    # Get a list of transactions
    # Retrieves a paginated list of the Transactions created by your API key.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to request (defaults to 1)
    # @option opts [Integer] :per The number of results to load per page (defaults to 10)
    # @option opts [String] :external_id Allows filtering results by &#x60;external_id&#x60;.  Example: &#x60;/v1/senders?external_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
    # @option opts [String] :sender_id Allows filtering results by &#x60;sender_id&#x60;.  Example: &#x60;/v1/transactions?sender_id&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60;
    # @option opts [String] :transactions_type Allows filtering results by &#x60;transactions_type&#x60;.  Example: &#x60;/v1/transactions?transactions_type&#x3D;automated&#x60;
    # @return [TransactionListResponse]
    def get_transactions(opts = {})
      data, _status_code, _headers = get_transactions_with_http_info(opts)
      data
    end

    # Get a list of transactions
    # Retrieves a paginated list of the Transactions created by your API key.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to request (defaults to 1)
    # @option opts [Integer] :per The number of results to load per page (defaults to 10)
    # @option opts [String] :external_id Allows filtering results by &#x60;external_id&#x60;.  Example: &#x60;/v1/senders?external_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
    # @option opts [String] :sender_id Allows filtering results by &#x60;sender_id&#x60;.  Example: &#x60;/v1/transactions?sender_id&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60;
    # @option opts [String] :transactions_type Allows filtering results by &#x60;transactions_type&#x60;.  Example: &#x60;/v1/transactions?transactions_type&#x3D;automated&#x60;
    # @return [Array<(TransactionListResponse, Fixnum, Hash)>] TransactionListResponse data, response status code and response headers
    def get_transactions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.get_transactions ...'
      end
      if @api_client.config.client_side_validation && opts[:'transactions_type'] && !['automated', 'manual'].include?(opts[:'transactions_type'])
        fail ArgumentError, 'invalid value for "transactions_type", must be one of automated, manual'
      end
      # resource path
      local_var_path = '/transactions'

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per'] = opts[:'per'] if !opts[:'per'].nil?
      query_params[:'external_id'] = opts[:'external_id'] if !opts[:'external_id'].nil?
      query_params[:'sender_id'] = opts[:'sender_id'] if !opts[:'sender_id'].nil?
      query_params[:'transactions_type'] = opts[:'transactions_type'] if !opts[:'transactions_type'].nil?

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
        :return_type => 'TransactionListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#get_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Creates a fake payin for transaction
    # This method is available only in sandbox environment and is supposed to be used only for testing integration. It allows you to emulate a payin without paying actual money. 
    # @param transaction_id ID of the transaction to payin.  Example: &#x60;/v1/transactions/bf9ff782-e182-45ac-abea-5bce83ad6670/payin&#x60;
    # @param payin_method_request 
    # @param [Hash] opts the optional parameters
    # @return [TransactionResponse]
    def payin_transaction(transaction_id, payin_method_request, opts = {})
      data, _status_code, _headers = payin_transaction_with_http_info(transaction_id, payin_method_request, opts)
      data
    end

    # Creates a fake payin for transaction
    # This method is available only in sandbox environment and is supposed to be used only for testing integration. It allows you to emulate a payin without paying actual money. 
    # @param transaction_id ID of the transaction to payin.  Example: &#x60;/v1/transactions/bf9ff782-e182-45ac-abea-5bce83ad6670/payin&#x60;
    # @param payin_method_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionResponse, Fixnum, Hash)>] TransactionResponse data, response status code and response headers
    def payin_transaction_with_http_info(transaction_id, payin_method_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.payin_transaction ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TransactionsApi.payin_transaction"
      end
      # verify the required parameter 'payin_method_request' is set
      if @api_client.config.client_side_validation && payin_method_request.nil?
        fail ArgumentError, "Missing the required parameter 'payin_method_request' when calling TransactionsApi.payin_transaction"
      end
      # resource path
      local_var_path = '/transactions/{Transaction ID}/payin'.sub('{' + 'Transaction ID' + '}', transaction_id.to_s)

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
      post_body = @api_client.object_to_http_body(payin_method_request)
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#payin_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Creates a fake payout for transaction
    # This method is available only in sandbox environment and is supposed to be used only for testing. It allows you to emulate the payout of a transaction after payin. 
    # @param transaction_id ID of the transaction to payout.  Example: &#x60;/v1/transactions/bf9ff782-e182-45ac-abea-5bce83ad6670/payout&#x60;
    # @param [Hash] opts the optional parameters
    # @return [TransactionResponse]
    def payout_transaction(transaction_id, opts = {})
      data, _status_code, _headers = payout_transaction_with_http_info(transaction_id, opts)
      data
    end

    # Creates a fake payout for transaction
    # This method is available only in sandbox environment and is supposed to be used only for testing. It allows you to emulate the payout of a transaction after payin. 
    # @param transaction_id ID of the transaction to payout.  Example: &#x60;/v1/transactions/bf9ff782-e182-45ac-abea-5bce83ad6670/payout&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionResponse, Fixnum, Hash)>] TransactionResponse data, response status code and response headers
    def payout_transaction_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.payout_transaction ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TransactionsApi.payout_transaction"
      end
      # resource path
      local_var_path = '/transactions/{Transaction ID}/payout'.sub('{' + 'Transaction ID' + '}', transaction_id.to_s)

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
        :return_type => 'TransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#payout_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Creates a new transaction
    # Transactions are the main objects in the TransferZero API, so it's important to understand how to create and manage them. Transactions facilitate money movement from one Sender in a specific currency to one or multiple Recipients in another currency.  The main flow of a successful transaction flow is the following - - Transaction is created linking the Sender to the Recipient(s) with the requested amounts. - Once the sender is KYC'd and approved the transaction can be funded. - Once the transaction is funded, we will initiate the payout to the recipient(s). - After the recipient (or all recipients) has received the money, the transaction is finished.
    # @param transaction_request 
    # @param [Hash] opts the optional parameters
    # @return [TransactionResponse]
    def post_transactions(transaction_request, opts = {})
      data, _status_code, _headers = post_transactions_with_http_info(transaction_request, opts)
      data
    end

    # Creates a new transaction
    # Transactions are the main objects in the TransferZero API, so it&#39;s important to understand how to create and manage them. Transactions facilitate money movement from one Sender in a specific currency to one or multiple Recipients in another currency.  The main flow of a successful transaction flow is the following - - Transaction is created linking the Sender to the Recipient(s) with the requested amounts. - Once the sender is KYC&#39;d and approved the transaction can be funded. - Once the transaction is funded, we will initiate the payout to the recipient(s). - After the recipient (or all recipients) has received the money, the transaction is finished.
    # @param transaction_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionResponse, Fixnum, Hash)>] TransactionResponse data, response status code and response headers
    def post_transactions_with_http_info(transaction_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.post_transactions ...'
      end
      # verify the required parameter 'transaction_request' is set
      if @api_client.config.client_side_validation && transaction_request.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_request' when calling TransactionsApi.post_transactions"
      end
      # resource path
      local_var_path = '/transactions'

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
      post_body = @api_client.object_to_http_body(transaction_request)
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#post_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Validates a transaction payload
    # Validates fields in a transaction payload and displays invalid or missing fields
    # @param transaction_request 
    # @param [Hash] opts the optional parameters
    # @return [TransactionResponse]
    def validate_transactions(transaction_request, opts = {})
      data, _status_code, _headers = validate_transactions_with_http_info(transaction_request, opts)
      data
    end

    # Validates a transaction payload
    # Validates fields in a transaction payload and displays invalid or missing fields
    # @param transaction_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionResponse, Fixnum, Hash)>] TransactionResponse data, response status code and response headers
    def validate_transactions_with_http_info(transaction_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.validate_transactions ...'
      end
      # verify the required parameter 'transaction_request' is set
      if @api_client.config.client_side_validation && transaction_request.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_request' when calling TransactionsApi.validate_transactions"
      end
      # resource path
      local_var_path = '/transactions/validate'

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
      post_body = @api_client.object_to_http_body(transaction_request)
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#validate_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
