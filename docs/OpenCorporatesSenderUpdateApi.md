# TransferZero::OpenCorporatesSenderUpdateApi

All URIs are relative to *https://api-sandbox.bitpesa.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**update_sender**](OpenCorporatesSenderUpdateApi.md#update_sender) | **POST** /open_corporates/update_sender | Update Sender with data retrieved from Open Corporates


# **update_sender**
> OpenCorporatesSenderUpdateResponse update_sender(open_corporates_sender_update_request)

Update Sender with data retrieved from Open Corporates

This endpoint searches for a company on Open Corporates API and updates the associated Sender fields with the search results

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::OpenCorporatesSenderUpdateApi.new


begin
  #Update Sender with data retrieved from Open Corporates
  result = api_instance.update_sender(open_corporates_sender_update_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("OpenCorporatesSenderUpdateResponse")
    p result
  else
    puts "Exception when calling OpenCorporatesSenderUpdateApi->update_sender: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **open_corporates_sender_update_request** | [**OpenCorporatesSenderUpdateRequest**](OpenCorporatesSenderUpdateRequest.md)|  | 

### Return type

[**OpenCorporatesSenderUpdateResponse**](OpenCorporatesSenderUpdateResponse.md)

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



