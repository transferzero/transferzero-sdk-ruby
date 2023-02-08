=begin
#BitPesa Private API

#API specification used for internal BitPesa endpoints

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TransferZero::OpenCorporatesSearchRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OpenCorporatesSearchRequest' do
  before do
    # run before each test
    @instance = TransferZero::OpenCorporatesSearchRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OpenCorporatesSearchRequest' do
    it 'should create an instance of OpenCorporatesSearchRequest' do
      expect(@instance).to be_instance_of(TransferZero::OpenCorporatesSearchRequest)
    end
  end
  describe 'test attribute "search"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
