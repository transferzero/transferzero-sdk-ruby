# TransferZero::TransactionsApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**calculate_transactions**](TransactionsApi.md#calculate_transactions) | **POST** /transactions/calculate | Calculates transaction amounts for a transaction payload
[**get_transaction**](TransactionsApi.md#get_transaction) | **GET** /transactions/{Transaction ID} | Fetch a single transaction
[**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /transactions | Get a list of transactions
[**payin_transaction**](TransactionsApi.md#payin_transaction) | **POST** /transactions/{Transaction ID}/payin | Creates a fake payin for transaction
[**payout_transaction**](TransactionsApi.md#payout_transaction) | **POST** /transactions/{Transaction ID}/payout | Creates a fake payout for transaction
[**post_transactions**](TransactionsApi.md#post_transactions) | **POST** /transactions | Creates a new transaction
[**validate_transactions**](TransactionsApi.md#validate_transactions) | **POST** /transactions/validate | Validates a transaction payload


# **calculate_transactions**
> TransactionResponse calculate_transactions(transaction_request)

Calculates transaction amounts for a transaction payload

Calculates the input, output and fee amounts for the recipients in a transaction payload

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionsApi.new


begin
  #Calculates transaction amounts for a transaction payload
  result = api_instance.calculate_transactions(transaction_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionResponse")
    p result
  else
    puts "Exception when calling TransactionsApi->calculate_transactions: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_request** | [**TransactionRequest**](TransactionRequest.md)|  | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

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



# **get_transaction**
> TransactionResponse get_transaction(transaction_id)

Fetch a single transaction

Finds and returns a Transaction created by the requesting API key, using the provided Transaction ID.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionsApi.new


begin
  #Fetch a single transaction
  result = api_instance.get_transaction(transaction_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionResponse")
    p result
  else
    puts "Exception when calling TransactionsApi->get_transaction: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | [**String**](.md)| ID of the transaction.  Example: &#x60;/v1/transactions/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

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



# **get_transactions**
> TransactionListResponse get_transactions(opts)

Get a list of transactions

Retrieves a paginated list of the Transactions created by your API key.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionsApi.new

opts = { 
  page: 1 # Integer | The page number to request (defaults to 1)
  per: 10 # Integer | The number of results to load per page (defaults to 10)
  external_id: 'external_id_example' # String | Allows filtering results by `external_id`.  Example: `/v1/senders?external_id=26ec8517-2f0d-48c0-b74f-0bccb9ab3a87`
}

begin
  #Get a list of transactions
  result = api_instance.get_transactions(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionListResponse")
    p result
  else
    puts "Exception when calling TransactionsApi->get_transactions: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The page number to request (defaults to 1) | [optional] 
 **per** | **Integer**| The number of results to load per page (defaults to 10) | [optional] 
 **external_id** | **String**| Allows filtering results by &#x60;external_id&#x60;.  Example: &#x60;/v1/senders?external_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60; | [optional] 

### Return type

[**TransactionListResponse**](TransactionListResponse.md)

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



# **payin_transaction**
> TransactionResponse payin_transaction(transaction_idpayin_method_request)

Creates a fake payin for transaction

This method is available only in sandbox environment and is supposed to be used only for testing integration. It allows you to emulate a payin without paying actual money. 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionsApi.new


begin
  #Creates a fake payin for transaction
  result = api_instance.payin_transaction(transaction_idpayin_method_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionResponse")
    p result
  else
    puts "Exception when calling TransactionsApi->payin_transaction: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | [**String**](.md)| ID of the transaction to payin.  Example: &#x60;/v1/transactions/bf9ff782-e182-45ac-abea-5bce83ad6670/payin&#x60; | 
 **payin_method_request** | [**PayinMethodRequest**](PayinMethodRequest.md)|  | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

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



# **payout_transaction**
> TransactionResponse payout_transaction(transaction_id)

Creates a fake payout for transaction

This method is available only in sandbox environment and is supposed to be used only for testing. It allows you to emulate the payout of a transaction after payin. 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionsApi.new


begin
  #Creates a fake payout for transaction
  result = api_instance.payout_transaction(transaction_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionResponse")
    p result
  else
    puts "Exception when calling TransactionsApi->payout_transaction: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | [**String**](.md)| ID of the transaction to payout.  Example: &#x60;/v1/transactions/bf9ff782-e182-45ac-abea-5bce83ad6670/payout&#x60; | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

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



# **post_transactions**
> TransactionResponse post_transactions(transaction_request)

Creates a new transaction

Transactions are the main objects in the TransferZero API, so it's important to understand how to create and manage them. Transactions facilitate money movement from one Sender in a specific currency to one or multiple Recipients in another currency.  The main flow of a successful transaction flow is the following - - Transaction is created linking the Sender to the Recipient(s) with the requested amounts. - Once the sender is KYC'd and approved the transaction can be funded. - Once the transaction is funded, we will initiate the payout to the recipient(s). - After the recipient (or all recipients) has received the money, the transaction is finished.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionsApi.new


begin
  #Creates a new transaction
  result = api_instance.post_transactions(transaction_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionResponse")
    p result
  else
    puts "Exception when calling TransactionsApi->post_transactions: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_request** | [**TransactionRequest**](TransactionRequest.md)|  | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

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



# **validate_transactions**
> TransactionResponse validate_transactions(transaction_request)

Validates a transaction payload

Validates fields in a transaction payload and displays invalid or missing fields

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionsApi.new


begin
  #Validates a transaction payload
  result = api_instance.validate_transactions(transaction_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionResponse")
    p result
  else
    puts "Exception when calling TransactionsApi->validate_transactions: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_request** | [**TransactionRequest**](TransactionRequest.md)|  | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

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



