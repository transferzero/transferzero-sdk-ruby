# TransferZero::MandatesApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_mandate**](MandatesApi.md#get_mandate) | **GET** /mandates/{Mandate ID} | Fetch a single mandate


# **get_mandate**
> MandateResponse get_mandate(mandate_id)

Fetch a single mandate

Finds and returns a Mandate created within the current calendar year, where the mandate is linked to a Recipient owned by the authenticated API key.  Returns 404 if the mandate is not owned by the API key or was not issued in the current calendar year — mandates are only valid for the year in which they were issued.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::MandatesApi.new


begin
  #Fetch a single mandate
  result = api_instance.get_mandate(mandate_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("MandateResponse")
    p result
  else
    puts "Exception when calling MandatesApi->get_mandate: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mandate_id** | [**String**](.md)| ID of the mandate.  Example: &#x60;/v1/mandates/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 

### Return type

[**MandateResponse**](MandateResponse.md)

### Authorization

You can set the API Key and Secret on the TransferZero object when setting it up:

```ruby

TransferZero.configure do |config|
  config.api_key = '<key'
  config.api_secret = '<secret>'
  config.host = 'https://api-sandbox.transferzero.com/v1'
end

```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



