# TransferZero::AccountsApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account**](AccountsApi.md#get_account) | **GET** /accounts/{Currency} | Fetches account balance for specified currrency
[**get_accounts**](AccountsApi.md#get_accounts) | **GET** /accounts | Fetches account balances for all currencies


# **get_account**
> AccountResponse get_account(currency)

Fetches account balance for specified currrency

Fetches account balance for specified currrency, and returns current balance and associated currency code

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::AccountsApi.new


begin
  #Fetches account balance for specified currrency
  result = api_instance.get_account(currency)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("AccountResponse")
    p result
  else
    puts "Exception when calling AccountsApi->get_account: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **String**| Currency code of account balance to fetch  Example: &#x60;/v1/accounts/USD&#x60; | 

### Return type

[**AccountResponse**](AccountResponse.md)

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



# **get_accounts**
> AccountListResponse get_accounts

Fetches account balances for all currencies

Fetches account balances for all currencies, and returns an array of the current balances and associated currency codes.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::AccountsApi.new

begin
  #Fetches account balances for all currencies
  result = api_instance.get_accounts
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("AccountListResponse")
    p result
  else
    puts "Exception when calling AccountsApi->get_accounts: #{e}"
  end
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountListResponse**](AccountListResponse.md)

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



