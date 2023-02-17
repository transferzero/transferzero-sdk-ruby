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

# Unit tests for TransferZero::PoliticallyExposedPersonListResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PoliticallyExposedPersonListResponse' do
  before do
    # run before each test
    @instance = TransferZero::PoliticallyExposedPersonListResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PoliticallyExposedPersonListResponse' do
    it 'should create an instance of PoliticallyExposedPersonListResponse' do
      expect(@instance).to be_instance_of(TransferZero::PoliticallyExposedPersonListResponse)
    end
  end
  describe 'test attribute "object"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end