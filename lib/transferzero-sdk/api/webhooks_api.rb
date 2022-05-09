=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'uri'

module TransferZero
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end


    # Unsubscribing from a webhook
    # Unsubscribes from a webhook specified
    # @param webhook_id The ID of webhook to cancel.  Example: &#x60;/v1/webhooks/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60;
    # @param [Hash] opts the optional parameters
    # @return [WebhookDefinitionResponse]
    def delete_webhook(webhook_id, opts = {})
      data, _status_code, _headers = delete_webhook_with_http_info(webhook_id, opts)
      data
    end

    # Unsubscribing from a webhook
    # Unsubscribes from a webhook specified
    # @param webhook_id The ID of webhook to cancel.  Example: &#x60;/v1/webhooks/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookDefinitionResponse, Fixnum, Hash)>] WebhookDefinitionResponse data, response status code and response headers
    def delete_webhook_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.delete_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.delete_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{Webhook ID}'.sub('{' + 'Webhook ID' + '}', webhook_id.to_s)

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
        :return_type => 'WebhookDefinitionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Find a webhook's details
    # Look up a webhook's details with its ID
    # @param webhook_id The ID of the Webhook to look up  Example: &#x60;/v1/webhooks/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60;
    # @param [Hash] opts the optional parameters
    # @return [WebhookDefinitionResponse]
    def get_webhook(webhook_id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(webhook_id, opts)
      data
    end

    # Find a webhook&#39;s details
    # Look up a webhook&#39;s details with its ID
    # @param webhook_id The ID of the Webhook to look up  Example: &#x60;/v1/webhooks/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookDefinitionResponse, Fixnum, Hash)>] WebhookDefinitionResponse data, response status code and response headers
    def get_webhook_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.get_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{Webhook ID}'.sub('{' + 'Webhook ID' + '}', webhook_id.to_s)

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
        :return_type => 'WebhookDefinitionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Find possible webhook events
    # Fetching possible webhook events
    # @param [Hash] opts the optional parameters
    # @return [WebhookDefinitionEventListResponse]
    def get_webhook_events(opts = {})
      data, _status_code, _headers = get_webhook_events_with_http_info(opts)
      data
    end

    # Find possible webhook events
    # Fetching possible webhook events
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookDefinitionEventListResponse, Fixnum, Hash)>] WebhookDefinitionEventListResponse data, response status code and response headers
    def get_webhook_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhook_events ...'
      end
      # resource path
      local_var_path = '/webhooks/events'

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
        :return_type => 'WebhookDefinitionEventListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhook_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    def get_webhooks_all(opts = {})
      result = []
      response = get_webhooks(opts)
      result += response["object"]
      while next_page = response["meta"]["pagination"]["next_page"]
        response = get_webhooks(opts.merge(page: next_page))
        result += response["object"]
      end
      result
    end

    # Listing webhooks
    # Get a list of created webhooks
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to request (defaults to 1)
    # @option opts [Integer] :per The number of results to load per page (defaults to 10)
    # @return [WebhookDefinitionListResponse]
    def get_webhooks(opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(opts)
      data
    end

    # Listing webhooks
    # Get a list of created webhooks
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to request (defaults to 1)
    # @option opts [Integer] :per The number of results to load per page (defaults to 10)
    # @return [Array<(WebhookDefinitionListResponse, Fixnum, Hash)>] WebhookDefinitionListResponse data, response status code and response headers
    def get_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhooks ...'
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per'] = opts[:'per'] if !opts[:'per'].nil?

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
        :return_type => 'WebhookDefinitionListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Creating a webhook
    # Creates a new webhook, subscribing the provided endpoint to the specified event(s) 
    # @param webhook_definition_request 
    # @param [Hash] opts the optional parameters
    # @return [WebhookDefinitionResponse]
    def post_webhooks(webhook_definition_request, opts = {})
      data, _status_code, _headers = post_webhooks_with_http_info(webhook_definition_request, opts)
      data
    end

    # Creating a webhook
    # Creates a new webhook, subscribing the provided endpoint to the specified event(s) 
    # @param webhook_definition_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookDefinitionResponse, Fixnum, Hash)>] WebhookDefinitionResponse data, response status code and response headers
    def post_webhooks_with_http_info(webhook_definition_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.post_webhooks ...'
      end
      # verify the required parameter 'webhook_definition_request' is set
      if @api_client.config.client_side_validation && webhook_definition_request.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_definition_request' when calling WebhooksApi.post_webhooks"
      end
      # resource path
      local_var_path = '/webhooks'

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
      post_body = @api_client.object_to_http_body(webhook_definition_request)
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookDefinitionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#post_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
