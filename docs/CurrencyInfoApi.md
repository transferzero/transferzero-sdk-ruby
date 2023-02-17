# TransferZero::CurrencyInfoApi

All URIs are relative to *https://api-sandbox.bitpesa.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**info_currencies**](CurrencyInfoApi.md#info_currencies) | **GET** /info/currencies | Getting a list of possible requested currencies
[**info_currencies_in**](CurrencyInfoApi.md#info_currencies_in) | **GET** /info/currencies/in | Getting a list of possible input currencies
[**info_currencies_out**](CurrencyInfoApi.md#info_currencies_out) | **GET** /info/currencies/out | Getting a list of possible output currencies


# **info_currencies**
> CurrencyListResponse info_currencies

Getting a list of possible requested currencies

Fetches a list of currencies available to use in other API requests. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::CurrencyInfoApi.new

begin
  #Getting a list of possible requested currencies
  result = api_instance.info_currencies
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("CurrencyListResponse")
    p result
  else
    puts "Exception when calling CurrencyInfoApi->info_currencies: #{e}"
  end
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CurrencyListResponse**](CurrencyListResponse.md)

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



# **info_currencies_in**
> CurrencyExchangeListResponse info_currencies_in(opts)

Getting a list of possible input currencies

Fetches a list of currencies available to use as the input currency in other API requests. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier. Use this endpoint to determine the current exchange rate from a specific input currency to any output currency that's available. 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::CurrencyInfoApi.new

opts = { 
  sender_id: 'sender_id_example' # String | Allows the scoping of the results by `sender_id` (optional).  Example: `/v1/info/currencies/in?sender_id=26ec8517-2f0d-48c0-b74f-0bccb9ab3a87`
}

begin
  #Getting a list of possible input currencies
  result = api_instance.info_currencies_in(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("CurrencyExchangeListResponse")
    p result
  else
    puts "Exception when calling CurrencyInfoApi->info_currencies_in: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | [**String**](.md)| Allows the scoping of the results by &#x60;sender_id&#x60; (optional).  Example: &#x60;/v1/info/currencies/in?sender_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60; | [optional] 

### Return type

[**CurrencyExchangeListResponse**](CurrencyExchangeListResponse.md)

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



# **info_currencies_out**
> CurrencyExchangeListResponse info_currencies_out(opts)

Getting a list of possible output currencies

Fetches a list of currencies available to use as the output currency and their exchange rates against the available input currencies. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier. 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::CurrencyInfoApi.new

opts = { 
  sender_id: 'sender_id_example' # String | Allows the scoping of the results by `sender_id` (optional).  Example: `/v1/info/currencies/out?sender_id=26ec8517-2f0d-48c0-b74f-0bccb9ab3a87`
}

begin
  #Getting a list of possible output currencies
  result = api_instance.info_currencies_out(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("CurrencyExchangeListResponse")
    p result
  else
    puts "Exception when calling CurrencyInfoApi->info_currencies_out: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | [**String**](.md)| Allows the scoping of the results by &#x60;sender_id&#x60; (optional).  Example: &#x60;/v1/info/currencies/out?sender_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60; | [optional] 

### Return type

[**CurrencyExchangeListResponse**](CurrencyExchangeListResponse.md)

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



