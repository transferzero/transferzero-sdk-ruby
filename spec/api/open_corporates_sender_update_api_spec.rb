=begin
#BitPesa Private API

#API specification used for internal BitPesa endpoints

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'spec_helper'
require 'json'

# Unit tests for TransferZero::OpenCorporatesSenderUpdateApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OpenCorporatesSenderUpdateApi' do
  before do
    # run before each test
    @api_instance = TransferZero::OpenCorporatesSenderUpdateApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OpenCorporatesSenderUpdateApi' do
    it 'should create an instance of OpenCorporatesSenderUpdateApi' do
      expect(@api_instance).to be_instance_of(TransferZero::OpenCorporatesSenderUpdateApi)
    end
  end

  # unit tests for update_sender
  # Update Sender with data retrieved from Open Corporates
  # This endpoint searches for a company on Open Corporates API and updates the associated Sender fields with the search results
  # @param open_corporates_sender_update_request 
  # @param [Hash] opts the optional parameters
  # @return [OpenCorporatesSenderUpdateResponse]
  describe 'update_sender test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end