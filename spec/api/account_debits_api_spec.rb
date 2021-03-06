=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'spec_helper'
require 'json'

# Unit tests for TransferZero::AccountDebitsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountDebitsApi' do
  before do
    # run before each test
    @api_instance = TransferZero::AccountDebitsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountDebitsApi' do
    it 'should create an instance of AccountDebitsApi' do
      expect(@api_instance).to be_instance_of(TransferZero::AccountDebitsApi)
    end
  end

  # unit tests for get_accounts_debit
  # Fetching an account debit
  # Returns a single account debit by the account debit ID
  # @param account_debit_id ID of the account debit to get.  Example: &#x60;/v1/accounts/debits/9170c890-1a45-46bd-9b79-3deeb8b4ff3d&#x60;
  # @param [Hash] opts the optional parameters
  # @return [DebitResponse]
  describe 'get_accounts_debit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_accounts_debits
  # Listing Accounts debits
  # Get a list of accounts debits
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page number to request (defaults to 1)
  # @option opts [Integer] :per The number of results to load per page (defaults to 10)
  # @return [DebitListResponse]
  describe 'get_accounts_debits test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_accounts_debits
  # Creating an account debit
  # Creates a new account debit finding transaction through the internal balance  To successfully fund a transaction - - The currency needs to be the same as the input_currency on the transaction - The amount has to be the same as the input_amount on the transaction - The to_id is the id of the transaction - You need to have enough balance of the appropriate currency inside your wallet  Once the transaction is funded, we will immediately start trying to pay out the recipient(s).  It is also possible to create multiple account debits by supplying an array of debit objects 
  # @param debit_request_wrapper 
  # @param [Hash] opts the optional parameters
  # @return [DebitListResponse]
  describe 'post_accounts_debits test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
