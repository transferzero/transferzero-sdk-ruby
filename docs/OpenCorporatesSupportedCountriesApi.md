# TransferZero::OpenCorporatesSupportedCountriesApi

All URIs are relative to *https://api-sandbox.bitpesa.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_open_corporates_supported_countries**](OpenCorporatesSupportedCountriesApi.md#get_open_corporates_supported_countries) | **GET** /open_corporates/countries | Get List of Supported Countries from OpenCorporates


# **get_open_corporates_supported_countries**
> OpenCorporatesSupportedCountriesListResponse get_open_corporates_supported_countries

Get List of Supported Countries from OpenCorporates

Get List of Supported Countries from OpenCorporates

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::OpenCorporatesSupportedCountriesApi.new

begin
  #Get List of Supported Countries from OpenCorporates
  result = api_instance.get_open_corporates_supported_countries
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("OpenCorporatesSupportedCountriesListResponse")
    p result
  else
    puts "Exception when calling OpenCorporatesSupportedCountriesApi->get_open_corporates_supported_countries: #{e}"
  end
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OpenCorporatesSupportedCountriesListResponse**](OpenCorporatesSupportedCountriesListResponse.md)

### Authorization

You can set the API Key and Secret on the TransferZero object when setting it up:

```ruby

TransferZero.configure do |config|
  config.api_key = '<key'
  config.api_secret = '<secret>'
  config.host = 'https://api-sandbox.bitpesa.co/v1'
end

```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



