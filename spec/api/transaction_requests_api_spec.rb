=begin
#BitPesa Private API

#API specification used for internal BitPesa endpoints

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'spec_helper'
require 'json'

# Unit tests for TransferZero::TransactionRequestsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionRequestsApi' do
  before do
    # run before each test
    @api_instance = TransferZero::TransactionRequestsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionRequestsApi' do
    it 'should create an instance of TransactionRequestsApi' do
      expect(@api_instance).to be_instance_of(TransferZero::TransactionRequestsApi)
    end
  end

  # unit tests for add_document_transaction_request
  # Adding a document to a transaction request (deprecated)
  # Adds a new document to a transaction request 
  # @param transaction_request_id ID of the transaction request to add the document.  Example: &#x60;/v1/info/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/add_document?document_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
  # @param document_id The ID of the document to be added to the transaction request.  Example: &#x60;/v1/info/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/add_document?document_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60;
  # @param [Hash] opts the optional parameters
  # @return [DocumentResponse]
  describe 'add_document_transaction_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_transaction_request
  # Cancelling a transaction request
  # Cancels a transaction request 
  # @param transaction_request_id ID of the transaction request to cancel.  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/cancel&#x60;
  # @param reason_cancellation Reason for the transaction request to cancel.  Example: &#x60;Not enough funds&#x60;
  # @param [Hash] opts the optional parameters
  # @return [TransactionReqResponse]
  describe 'cancel_transaction_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for confirm_transaction_request
  # Confirming a transaction request
  # Confirms a new transaction request 
  # @param transaction_request_id ID of the transaction request to confirm.  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/confirm&#x60;
  # @param [Hash] opts the optional parameters
  # @return [TransactionReqResponse]
  describe 'confirm_transaction_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_transaction_request
  # Fetching a transaction request
  # Returns a single transaction request by the Transaction Request ID
  # @param transaction_request_id ID of the transaction request to get.  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :versioned If false is passed, returns a Transaction request containing a not cached Transaction object  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670?versioned&#x3D;false&#x60;
  # @return [TransactionReqResponse]
  describe 'get_transaction_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_transaction_requests
  # Listing transaction requests
  # Get a list of transaction requests
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page number to request (defaults to 1)
  # @option opts [Integer] :per The number of results to load per page (defaults to 10)
  # @option opts [Array<String>] :state Returns transaction requests with specified states.  Example: &#x60;/v1/transaction_requests?state[]&#x3D;pending&amp;state[]&#x3D;modified&#x60;
  # @option opts [Array<String>] :currency Returns transaction requests with specified input_currency.  Example: &#x60;/v1/transaction_requests?currency[]&#x3D;USD&#x60;
  # @option opts [String] :created_at_from Returns transaction requests with specified created_at lower limit.  Example: &#x60;/v1/transaction_requests?created_at_from&#x3D;2018-06-09&#x60;
  # @option opts [String] :created_at_to Returns transaction requests with specified created_at upper limit.  Example: &#x60;/v1/transaction_requests?created_at_to&#x3D;2018-06-08&#x60;
  # @option opts [String] :amount_from Returns transaction requests with specified amount lower limit.  Example: &#x60;/v1/transaction_requests?currency&#x3D;NGN&amp;amount_from&#x3D;2.4319983&#x60;
  # @option opts [String] :amount_to Returns transaction requests with specified amount upper limit.  Example: &#x60;/v1/transaction_requests?currency&#x3D;NGN&amp;amount_to&#x3D;2.4319985&#x60;
  # @option opts [String] :sender_id Returns transaction requests for the specified sender.  Example: &#x60;/v1/transaction_requests?sender_id&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60;
  # @option opts [Boolean] :versioned If false is passed, returns Transaction requests containing not cached Transaction objects  Example: &#x60;/v1/transaction_requests?versioned&#x3D;false&#x60;
  # @option opts [Array<String>] :tag Returns transaction requests with the specified tag(s). Tags are optional labels assigned to transaction requests for organizational purposes  Example: &#x60;/v1/transaction_requests?tag[]&#x3D;square&#x60;
  # @option opts [Array<String>] :ids Returns transaction requests with the specified id(s). This allows the fetching of multiple transaction requests by ids for efficiency  Example: &#x60;/v1/transaction_requests?ids[]&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60;
  # @option opts [Array<String>] :included Returns transaction requests with the specified payout currencies.  Example: &#x60;/v1/transaction_requests?included[]&#x3D;KES&#x60;
  # @option opts [Array<String>] :excluded Returns transaction requests without the specified payout currencies.  Example: &#x60;/v1/transaction_requests?excluded[]&#x3D;KES&#x60;
  # @return [TransactionReqListResponse]
  describe 'get_transaction_requests test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_transaction_request
  # Creating a transaction request
  # Creates a new transaction request 
  # @param transaction_req_request 
  # @param [Hash] opts the optional parameters
  # @return [TransactionReqResponse]
  describe 'post_transaction_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for restful_add_document_transaction_request
  # Adding a document to a transaction request
  # Adds a new document to a transaction request 
  # @param transaction_request_id ID of the transaction request to add the document.  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/add&#x60;
  # @param document_id The ID of the document to be added to the transaction request.  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/add&#x60;
  # @param [Hash] opts the optional parameters
  # @return [DocumentResponse]
  describe 'restful_add_document_transaction_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for transaction_request_limits
  # Specifies the limits for transaction requests
  # Specifies the minimum and maximum limits for transaction requests
  # @param [Hash] opts the optional parameters
  # @return [TransactionReqLimitsResponse]
  describe 'transaction_request_limits test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for validate_transaction_requests
  # Validates a transaction request payload
  # Validates fields in a transaction request payload and displays invalid or missing fields
  # @param transaction_req_request 
  # @param [Hash] opts the optional parameters
  # @return [TransactionReqResponse]
  describe 'validate_transaction_requests test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end