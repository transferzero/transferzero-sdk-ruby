# TransferZero::AccountDebitsApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_accounts_debit**](AccountDebitsApi.md#get_accounts_debit) | **GET** /accounts/debits/{Account Debit ID} | Fetching an account debit
[**get_accounts_debits**](AccountDebitsApi.md#get_accounts_debits) | **GET** /accounts/debits | Listing Accounts debits
[**post_accounts_debits**](AccountDebitsApi.md#post_accounts_debits) | **POST** /accounts/debits | Creating an account debit


# **get_accounts_debit**
> DebitResponse get_accounts_debit(account_debit_id)

Fetching an account debit

Returns a single account debit by the account debit ID

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::AccountDebitsApi.new


begin
  #Fetching an account debit
  result = api_instance.get_accounts_debit(account_debit_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DebitResponse")
    p result
  else
    puts "Exception when calling AccountDebitsApi->get_accounts_debit: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_debit_id** | [**String**](.md)| ID of the account debit to get.  Example: &#x60;/v1/accounts/debits/9170c890-1a45-46bd-9b79-3deeb8b4ff3d&#x60; | 

### Return type

[**DebitResponse**](DebitResponse.md)

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



# **get_accounts_debits**
> DebitListResponse get_accounts_debits(opts)

Listing Accounts debits

Get a list of accounts debits

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::AccountDebitsApi.new

opts = { 
  page: 1 # Integer | The page number to request (defaults to 1)
  per: 10 # Integer | The number of results to load per page (defaults to 10)
}

begin
  #Listing Accounts debits
  result = api_instance.get_accounts_debits(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DebitListResponse")
    p result
  else
    puts "Exception when calling AccountDebitsApi->get_accounts_debits: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The page number to request (defaults to 1) | [optional] 
 **per** | **Integer**| The number of results to load per page (defaults to 10) | [optional] 

### Return type

[**DebitListResponse**](DebitListResponse.md)

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



# **post_accounts_debits**
> DebitListResponse post_accounts_debits(debit_request_wrapper)

Creating an account debit

Creates a new account debit finding transaction through the internal balance  To successfully fund a transaction - - The currency needs to be the same as the input_currency on the transaction - The amount has to be the same as the input_amount on the transaction - The to_id is the id of the transaction - You need to have enough balance of the appropriate currency inside your wallet  Once the transaction is funded, we will immediately start trying to pay out the recipient(s).  It is also possible to create multiple account debits by supplying an array of debit objects 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::AccountDebitsApi.new


begin
  #Creating an account debit
  result = api_instance.post_accounts_debits(debit_request_wrapper)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DebitListResponse")
    p result
  else
    puts "Exception when calling AccountDebitsApi->post_accounts_debits: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **debit_request_wrapper** | [**DebitRequestWrapper**](DebitRequestWrapper.md)|  | 

### Return type

[**DebitListResponse**](DebitListResponse.md)

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



