=begin
#BitPesa Private API

#API specification used for internal BitPesa endpoints

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'uri'

module TransferZero
  class SenderDocumentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end


    # Adding a document to a sender
    # Adds a new document to a sender 
    # @param sender_id ID of the sender to add the document.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/add&#x60;
    # @param document_id The ID of the document to be added to the sender.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/add&#x60;
    # @param [Hash] opts the optional parameters
    # @return [DocumentResponse]
    def add_document_sender(sender_id, document_id, opts = {})
      data, _status_code, _headers = add_document_sender_with_http_info(sender_id, document_id, opts)
      data
    end

    # Adding a document to a sender
    # Adds a new document to a sender 
    # @param sender_id ID of the sender to add the document.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/add&#x60;
    # @param document_id The ID of the document to be added to the sender.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/add&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def add_document_sender_with_http_info(sender_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SenderDocumentsApi.add_document_sender ...'
      end
      # verify the required parameter 'sender_id' is set
      if @api_client.config.client_side_validation && sender_id.nil?
        fail ArgumentError, "Missing the required parameter 'sender_id' when calling SenderDocumentsApi.add_document_sender"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling SenderDocumentsApi.add_document_sender"
      end
      # resource path
      local_var_path = '/senders/{Sender ID}/documents/{Document ID}/add'.sub('{' + 'Sender ID' + '}', sender_id.to_s).sub('{' + 'Document ID' + '}', document_id.to_s)

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
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SenderDocumentsApi#add_document_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Fetching a document belonging to a sender
    # Returns a single document belonging to a sender by the Document ID
    # @param sender_id ID of the sender who owns the requested document.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
    # @param document_id ID of the document to get.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
    # @param [Hash] opts the optional parameters
    # @return [DocumentResponse]
    def get_sender_document(sender_id, document_id, opts = {})
      data, _status_code, _headers = get_sender_document_with_http_info(sender_id, document_id, opts)
      data
    end

    # Fetching a document belonging to a sender
    # Returns a single document belonging to a sender by the Document ID
    # @param sender_id ID of the sender who owns the requested document.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
    # @param document_id ID of the document to get.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def get_sender_document_with_http_info(sender_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SenderDocumentsApi.get_sender_document ...'
      end
      # verify the required parameter 'sender_id' is set
      if @api_client.config.client_side_validation && sender_id.nil?
        fail ArgumentError, "Missing the required parameter 'sender_id' when calling SenderDocumentsApi.get_sender_document"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling SenderDocumentsApi.get_sender_document"
      end
      # resource path
      local_var_path = '/senders/{Sender ID}/documents/{Document ID}'.sub('{' + 'Sender ID' + '}', sender_id.to_s).sub('{' + 'Document ID' + '}', document_id.to_s)

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
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SenderDocumentsApi#get_sender_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Getting a list of documents belonging to a sender
    # Fetches a list of documents belonging to a sender.
    # @param sender_id ID of the sender who owns the requested documents.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to request (defaults to 1)
    # @option opts [Integer] :per The number of results to load per page (defaults to 10)
    # @return [DocumentListResponse]
    def get_sender_documents(sender_id, opts = {})
      data, _status_code, _headers = get_sender_documents_with_http_info(sender_id, opts)
      data
    end

    # Getting a list of documents belonging to a sender
    # Fetches a list of documents belonging to a sender.
    # @param sender_id ID of the sender who owns the requested documents.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to request (defaults to 1)
    # @option opts [Integer] :per The number of results to load per page (defaults to 10)
    # @return [Array<(DocumentListResponse, Fixnum, Hash)>] DocumentListResponse data, response status code and response headers
    def get_sender_documents_with_http_info(sender_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SenderDocumentsApi.get_sender_documents ...'
      end
      # verify the required parameter 'sender_id' is set
      if @api_client.config.client_side_validation && sender_id.nil?
        fail ArgumentError, "Missing the required parameter 'sender_id' when calling SenderDocumentsApi.get_sender_documents"
      end
      # resource path
      local_var_path = '/senders/{Sender ID}/documents'.sub('{' + 'Sender ID' + '}', sender_id.to_s)

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
        :return_type => 'DocumentListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SenderDocumentsApi#get_sender_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Removing a document from a sender
    # Removes a document from a sender 
    # @param sender_id ID of the sender with the document to remove.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/remove&#x60;
    # @param document_id The ID of the document to be removed from the sender.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/remove&#x60;
    # @param [Hash] opts the optional parameters
    # @return [DocumentResponse]
    def remove_document_sender(sender_id, document_id, opts = {})
      data, _status_code, _headers = remove_document_sender_with_http_info(sender_id, document_id, opts)
      data
    end

    # Removing a document from a sender
    # Removes a document from a sender 
    # @param sender_id ID of the sender with the document to remove.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/remove&#x60;
    # @param document_id The ID of the document to be removed from the sender.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/remove&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def remove_document_sender_with_http_info(sender_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SenderDocumentsApi.remove_document_sender ...'
      end
      # verify the required parameter 'sender_id' is set
      if @api_client.config.client_side_validation && sender_id.nil?
        fail ArgumentError, "Missing the required parameter 'sender_id' when calling SenderDocumentsApi.remove_document_sender"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling SenderDocumentsApi.remove_document_sender"
      end
      # resource path
      local_var_path = '/senders/{Sender ID}/documents/{Document ID}/remove'.sub('{' + 'Sender ID' + '}', sender_id.to_s).sub('{' + 'Document ID' + '}', document_id.to_s)

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
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SenderDocumentsApi#remove_document_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
