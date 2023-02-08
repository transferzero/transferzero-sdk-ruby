# TransferZero::BankAccountDetailsApi

All URIs are relative to *https://api-sandbox.bitpesa.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bank_account_details**](BankAccountDetailsApi.md#get_bank_account_details) | **GET** /bank_account_details/{Currency} | Fetching bank account details


# **get_bank_account_details**
> BankAccountDetailsResponse get_bank_account_details(currency)

Fetching bank account details

Returns single bank account details based on the currency

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::BankAccountDetailsApi.new


begin
  #Fetching bank account details
  result = api_instance.get_bank_account_details(currency)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("BankAccountDetailsResponse")
    p result
  else
    puts "Exception when calling BankAccountDetailsApi->get_bank_account_details: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **String**| Currency of the required bank account details.  Example: &#x60;/v1/bank_account_details/NGN&#x60; | 

### Return type

[**BankAccountDetailsResponse**](BankAccountDetailsResponse.md)

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



