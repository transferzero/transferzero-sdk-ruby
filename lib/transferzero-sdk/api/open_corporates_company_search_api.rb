=begin
#BitPesa Private API

#API specification used for internal BitPesa endpoints

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'uri'

module TransferZero
  class OpenCorporatesCompanySearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end


    # Search for a company on Open Corporates
    # This endpoint searches for a company on Open Corporates API and returns the name if found
    # @param open_corporates_search_request 
    # @param [Hash] opts the optional parameters
    # @return [OpenCorporatesSearchResponse]
    def search_company(open_corporates_search_request, opts = {})
      data, _status_code, _headers = search_company_with_http_info(open_corporates_search_request, opts)
      data
    end

    # Search for a company on Open Corporates
    # This endpoint searches for a company on Open Corporates API and returns the name if found
    # @param open_corporates_search_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OpenCorporatesSearchResponse, Fixnum, Hash)>] OpenCorporatesSearchResponse data, response status code and response headers
    def search_company_with_http_info(open_corporates_search_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OpenCorporatesCompanySearchApi.search_company ...'
      end
      # verify the required parameter 'open_corporates_search_request' is set
      if @api_client.config.client_side_validation && open_corporates_search_request.nil?
        fail ArgumentError, "Missing the required parameter 'open_corporates_search_request' when calling OpenCorporatesCompanySearchApi.search_company"
      end
      # resource path
      local_var_path = '/open_corporates/search'

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
      post_body = @api_client.object_to_http_body(open_corporates_search_request)
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OpenCorporatesSearchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpenCorporatesCompanySearchApi#search_company\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end