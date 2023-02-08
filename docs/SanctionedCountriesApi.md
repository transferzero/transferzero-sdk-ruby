# TransferZero::SanctionedCountriesApi

All URIs are relative to *https://api-sandbox.bitpesa.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_sanctioned_countries**](SanctionedCountriesApi.md#get_sanctioned_countries) | **GET** /sanctioned_countries | Get List of Sanctioned Countries


# **get_sanctioned_countries**
> SanctionedCountryListResponse get_sanctioned_countries

Get List of Sanctioned Countries

Get a list of sanctioned countries

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::SanctionedCountriesApi.new

begin
  #Get List of Sanctioned Countries
  result = api_instance.get_sanctioned_countries
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("SanctionedCountryListResponse")
    p result
  else
    puts "Exception when calling SanctionedCountriesApi->get_sanctioned_countries: #{e}"
  end
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SanctionedCountryListResponse**](SanctionedCountryListResponse.md)

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



