=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'uri'

module TransferZero
  class RecipientsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end


    # Cancelling a recipient
    # Cancels the payment to the recipient specified in the URL path.  Please note recipients where the `may_cancel` attribute is true will be cancelled immediately. If the `may_cancel` attribute is false you can still try to cancel the recipient, however it will only gets cancelled if we will receive a confirmation from our partner that the payment has failed
    # @param recipient_id ID of recipient to cancel.  Example: &#x60;/v1/recipients/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60;
    # @param [Hash] opts the optional parameters
    # @return [RecipientResponse]
    def delete_recipient(recipient_id, opts = {})
      data, _status_code, _headers = delete_recipient_with_http_info(recipient_id, opts)
      data
    end

    # Cancelling a recipient
    # Cancels the payment to the recipient specified in the URL path.  Please note recipients where the &#x60;may_cancel&#x60; attribute is true will be cancelled immediately. If the &#x60;may_cancel&#x60; attribute is false you can still try to cancel the recipient, however it will only gets cancelled if we will receive a confirmation from our partner that the payment has failed
    # @param recipient_id ID of recipient to cancel.  Example: &#x60;/v1/recipients/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(RecipientResponse, Fixnum, Hash)>] RecipientResponse data, response status code and response headers
    def delete_recipient_with_http_info(recipient_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecipientsApi.delete_recipient ...'
      end
      # verify the required parameter 'recipient_id' is set
      if @api_client.config.client_side_validation && recipient_id.nil?
        fail ArgumentError, "Missing the required parameter 'recipient_id' when calling RecipientsApi.delete_recipient"
      end
      # resource path
      local_var_path = '/recipients/{Recipient ID}'.sub('{' + 'Recipient ID' + '}', recipient_id.to_s)

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
        :return_type => 'RecipientResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecipientsApi#delete_recipient\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    def get_recipients_all(opts = {})
      result = []
      response = get_recipients(opts)
      result += response["object"]
      while next_page = response["meta"]["pagination"]["next_page"]
        response = get_recipients(opts.merge(page: next_page))
        result += response["object"]
      end
      result
    end

    # Getting a list of recipients with filtering
    # Fetches details of all recipients.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to request (defaults to 1)
    # @option opts [Integer] :per The number of results to load per page (defaults to 10)
    # @option opts [String] :created_at_from Start date to filter recipients by created_at range Allows filtering results by the specified &#x60;created_at&#x60; timeframe.  Example: &#x60;/v1/recipients?created_at_from&#x3D;2018-06-06&amp;created_at_to&#x3D;2018-06-08&#x60;
    # @option opts [String] :created_at_to End date to filter recipients by created_at range Allows filtering results by the specified &#x60;created_at&#x60; timeframe.  Example: &#x60;/v1/recipients?created_at_from&#x3D;2018-06-06&amp;created_at_to&#x3D;2018-06-08&#x60;
    # @option opts [String] :amount_from Minimum amount to filter recipients by amount range.  Allows filtering results by the specified &#x60;amount&#x60; range. When using this filter, the &#x60;currency&#x60; should also be specified.  Example: &#x60;/v1/recipients?currency&#x3D;NGN&amp;amount_from&#x3D;83.76672339&amp;amount_to&#x3D;83.76672339&#x60;
    # @option opts [String] :amount_to Max amount to filter recipients by amount range.  Allows filtering results by the specified &#x60;amount&#x60; range. When using this filter, the &#x60;currency&#x60; should also be specified.  Example: &#x60;/v1/recipients?currency&#x3D;NGN&amp;amount_from&#x3D;83.76672339&amp;amount_to&#x3D;83.76672339&#x60;
    # @option opts [Array<String>] :state Allows filtering results by &#x60;state&#x60; of recipient. See [API Documentation - Recipient state](https://docs.transferzero.com/docs/transaction-flow/#state) for possible states.  Example: &#x60;/v1/recipients?state[]&#x3D;error&amp;state[]&#x3D;initial&#x60;
    # @option opts [Array<String>] :currency Allows filtering results by &#x60;input_currency&#x60;.  Additionally required when filtering by an amount range Example: &#x60;/v1/recipients?currency[]&#x3D;KES&amp;currency[]&#x3D;NGN&#x60;
    # @return [RecipientListResponse]
    def get_recipients(opts = {})
      data, _status_code, _headers = get_recipients_with_http_info(opts)
      data
    end

    # Getting a list of recipients with filtering
    # Fetches details of all recipients.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to request (defaults to 1)
    # @option opts [Integer] :per The number of results to load per page (defaults to 10)
    # @option opts [String] :created_at_from Start date to filter recipients by created_at range Allows filtering results by the specified &#x60;created_at&#x60; timeframe.  Example: &#x60;/v1/recipients?created_at_from&#x3D;2018-06-06&amp;created_at_to&#x3D;2018-06-08&#x60;
    # @option opts [String] :created_at_to End date to filter recipients by created_at range Allows filtering results by the specified &#x60;created_at&#x60; timeframe.  Example: &#x60;/v1/recipients?created_at_from&#x3D;2018-06-06&amp;created_at_to&#x3D;2018-06-08&#x60;
    # @option opts [String] :amount_from Minimum amount to filter recipients by amount range.  Allows filtering results by the specified &#x60;amount&#x60; range. When using this filter, the &#x60;currency&#x60; should also be specified.  Example: &#x60;/v1/recipients?currency&#x3D;NGN&amp;amount_from&#x3D;83.76672339&amp;amount_to&#x3D;83.76672339&#x60;
    # @option opts [String] :amount_to Max amount to filter recipients by amount range.  Allows filtering results by the specified &#x60;amount&#x60; range. When using this filter, the &#x60;currency&#x60; should also be specified.  Example: &#x60;/v1/recipients?currency&#x3D;NGN&amp;amount_from&#x3D;83.76672339&amp;amount_to&#x3D;83.76672339&#x60;
    # @option opts [Array<String>] :state Allows filtering results by &#x60;state&#x60; of recipient. See [API Documentation - Recipient state](https://docs.transferzero.com/docs/transaction-flow/#state) for possible states.  Example: &#x60;/v1/recipients?state[]&#x3D;error&amp;state[]&#x3D;initial&#x60;
    # @option opts [Array<String>] :currency Allows filtering results by &#x60;input_currency&#x60;.  Additionally required when filtering by an amount range Example: &#x60;/v1/recipients?currency[]&#x3D;KES&amp;currency[]&#x3D;NGN&#x60;
    # @return [Array<(RecipientListResponse, Fixnum, Hash)>] RecipientListResponse data, response status code and response headers
    def get_recipients_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecipientsApi.get_recipients ...'
      end
      # resource path
      local_var_path = '/recipients'

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per'] = opts[:'per'] if !opts[:'per'].nil?
      query_params[:'created_at_from'] = opts[:'created_at_from'] if !opts[:'created_at_from'].nil?
      query_params[:'created_at_to'] = opts[:'created_at_to'] if !opts[:'created_at_to'].nil?
      query_params[:'amount_from'] = opts[:'amount_from'] if !opts[:'amount_from'].nil?
      query_params[:'amount_to'] = opts[:'amount_to'] if !opts[:'amount_to'].nil?
      query_params[:'state'] = @api_client.build_collection_param(opts[:'state'], :multi) if !opts[:'state'].nil?
      query_params[:'currency'] = @api_client.build_collection_param(opts[:'currency'], :multi) if !opts[:'currency'].nil?

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
        :return_type => 'RecipientListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecipientsApi#get_recipients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Updating a recipient
    # Updates the recipient specified in the URL path.  Please note that only recipients where the `editable` field is true can be modified. Once the recipient is modified any subsequent payout tries will be sent to the updated details.
    # @param recipient_id ID of recipient to update.  Example: &#x60;/v1/recipients/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60;
    # @param recipient_request 
    # @param [Hash] opts the optional parameters
    # @return [RecipientResponse]
    def patch_recipient(recipient_id, recipient_request, opts = {})
      data, _status_code, _headers = patch_recipient_with_http_info(recipient_id, recipient_request, opts)
      data
    end

    # Updating a recipient
    # Updates the recipient specified in the URL path.  Please note that only recipients where the &#x60;editable&#x60; field is true can be modified. Once the recipient is modified any subsequent payout tries will be sent to the updated details.
    # @param recipient_id ID of recipient to update.  Example: &#x60;/v1/recipients/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60;
    # @param recipient_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RecipientResponse, Fixnum, Hash)>] RecipientResponse data, response status code and response headers
    def patch_recipient_with_http_info(recipient_id, recipient_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecipientsApi.patch_recipient ...'
      end
      # verify the required parameter 'recipient_id' is set
      if @api_client.config.client_side_validation && recipient_id.nil?
        fail ArgumentError, "Missing the required parameter 'recipient_id' when calling RecipientsApi.patch_recipient"
      end
      # verify the required parameter 'recipient_request' is set
      if @api_client.config.client_side_validation && recipient_request.nil?
        fail ArgumentError, "Missing the required parameter 'recipient_request' when calling RecipientsApi.patch_recipient"
      end
      # resource path
      local_var_path = '/recipients/{Recipient ID}'.sub('{' + 'Recipient ID' + '}', recipient_id.to_s)

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
      post_body = @api_client.object_to_http_body(recipient_request)
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RecipientResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecipientsApi#patch_recipient\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Returns list of proof of payments
    # Returns a list of uploaded proof of payment files for a transaction recipient
    # @param recipient_id ID of the recipient for whom the proof of payments will be returned.  Example: &#x60;/v1/recipients/9d4d7b73-a94c-4979-ab57-09074fd55d33/proof_of_payments&#x60;
    # @param [Hash] opts the optional parameters
    # @return [ProofOfPaymentListResponse]
    def proof_of_payments(recipient_id, opts = {})
      data, _status_code, _headers = proof_of_payments_with_http_info(recipient_id, opts)
      data
    end

    # Returns list of proof of payments
    # Returns a list of uploaded proof of payment files for a transaction recipient
    # @param recipient_id ID of the recipient for whom the proof of payments will be returned.  Example: &#x60;/v1/recipients/9d4d7b73-a94c-4979-ab57-09074fd55d33/proof_of_payments&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProofOfPaymentListResponse, Fixnum, Hash)>] ProofOfPaymentListResponse data, response status code and response headers
    def proof_of_payments_with_http_info(recipient_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecipientsApi.proof_of_payments ...'
      end
      # verify the required parameter 'recipient_id' is set
      if @api_client.config.client_side_validation && recipient_id.nil?
        fail ArgumentError, "Missing the required parameter 'recipient_id' when calling RecipientsApi.proof_of_payments"
      end
      # resource path
      local_var_path = '/recipients/{Recipient ID}/proof_of_payments'.sub('{' + 'Recipient ID' + '}', recipient_id.to_s)

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
        :return_type => 'ProofOfPaymentListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecipientsApi#proof_of_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
