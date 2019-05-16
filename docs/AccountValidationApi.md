# TransferZero::AccountValidationApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_account_validations**](AccountValidationApi.md#post_account_validations) | **POST** /account_validations | Validates the existence of a bank account


# **post_account_validations**
> AccountValidationResponse post_account_validations(account_validation_request)

Validates the existence of a bank account

Validates the existence of a bank account and returns the associated customer name

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::AccountValidationApi.new


begin
  #Validates the existence of a bank account
  result = api_instance.post_account_validations(account_validation_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("AccountValidationResponse")
    p result
  else
    puts "Exception when calling AccountValidationApi->post_account_validations: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_validation_request** | [**AccountValidationRequest**](AccountValidationRequest.md)|  | 

### Return type

[**AccountValidationResponse**](AccountValidationResponse.md)

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

 - **Content-Type**: application/json
 - **Accept**: application/json



