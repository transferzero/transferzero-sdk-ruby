=begin
#BitPesa Private API

#API specification used for internal BitPesa endpoints

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'spec_helper'
require 'json'

# Unit tests for TransferZero::OpenCorporatesSupportedCountriesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OpenCorporatesSupportedCountriesApi' do
  before do
    # run before each test
    @api_instance = TransferZero::OpenCorporatesSupportedCountriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OpenCorporatesSupportedCountriesApi' do
    it 'should create an instance of OpenCorporatesSupportedCountriesApi' do
      expect(@api_instance).to be_instance_of(TransferZero::OpenCorporatesSupportedCountriesApi)
    end
  end

  # unit tests for get_open_corporates_supported_countries
  # Get List of Supported Countries from OpenCorporates
  # Get List of Supported Countries from OpenCorporates
  # @param [Hash] opts the optional parameters
  # @return [OpenCorporatesSupportedCountriesListResponse]
  describe 'get_open_corporates_supported_countries test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
