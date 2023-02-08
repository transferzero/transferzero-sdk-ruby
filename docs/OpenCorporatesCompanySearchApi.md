# TransferZero::OpenCorporatesCompanySearchApi

All URIs are relative to *https://api-sandbox.bitpesa.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_company**](OpenCorporatesCompanySearchApi.md#search_company) | **POST** /open_corporates/search | Search for a company on Open Corporates


# **search_company**
> OpenCorporatesSearchResponse search_company(open_corporates_search_request)

Search for a company on Open Corporates

This endpoint searches for a company on Open Corporates API and returns the name if found

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::OpenCorporatesCompanySearchApi.new


begin
  #Search for a company on Open Corporates
  result = api_instance.search_company(open_corporates_search_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("OpenCorporatesSearchResponse")
    p result
  else
    puts "Exception when calling OpenCorporatesCompanySearchApi->search_company: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **open_corporates_search_request** | [**OpenCorporatesSearchRequest**](OpenCorporatesSearchRequest.md)|  | 

### Return type

[**OpenCorporatesSearchResponse**](OpenCorporatesSearchResponse.md)

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

 - **Content-Type**: application/json
 - **Accept**: application/json



