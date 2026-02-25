# TransferZero::DlocalBalanceApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_balance**](DlocalBalanceApi.md#get_balance) | **GET** /dlocal/balance | Get dlocal balances


# **get_balance**
> DlocalBalanceResponse get_balance

Get dlocal balances

This endpoint retrieves dlocal account balances

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::DlocalBalanceApi.new

begin
  #Get dlocal balances
  result = api_instance.get_balance
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DlocalBalanceResponse")
    p result
  else
    puts "Exception when calling DlocalBalanceApi->get_balance: #{e}"
  end
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DlocalBalanceResponse**](DlocalBalanceResponse.md)

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



