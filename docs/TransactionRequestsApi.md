# TransferZero::TransactionRequestsApi

All URIs are relative to *https://api-sandbox.bitpesa.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_document_transaction_request**](TransactionRequestsApi.md#add_document_transaction_request) | **POST** /transaction_requests/{Transaction Request ID}/add_document | Adding a document to a transaction request (deprecated)
[**cancel_transaction_request**](TransactionRequestsApi.md#cancel_transaction_request) | **POST** /transaction_requests/{Transaction Request ID}/cancel | Cancelling a transaction request
[**confirm_transaction_request**](TransactionRequestsApi.md#confirm_transaction_request) | **POST** /transaction_requests/{Transaction Request ID}/confirm | Confirming a transaction request
[**get_transaction_request**](TransactionRequestsApi.md#get_transaction_request) | **GET** /transaction_requests/{Transaction Request ID} | Fetching a transaction request
[**get_transaction_requests**](TransactionRequestsApi.md#get_transaction_requests) | **GET** /transaction_requests | Listing transaction requests
[**post_transaction_request**](TransactionRequestsApi.md#post_transaction_request) | **POST** /transaction_requests | Creating a transaction request
[**restful_add_document_transaction_request**](TransactionRequestsApi.md#restful_add_document_transaction_request) | **POST** /transaction_requests/{Transaction Request ID}/documents/{Document ID}/add | Adding a document to a transaction request
[**transaction_request_limits**](TransactionRequestsApi.md#transaction_request_limits) | **GET** /transaction_requests/limits | Specifies the limits for transaction requests
[**validate_transaction_requests**](TransactionRequestsApi.md#validate_transaction_requests) | **POST** /transaction_requests/validate | Validates a transaction request payload


# **add_document_transaction_request**
> DocumentResponse add_document_transaction_request(transaction_request_iddocument_id)

Adding a document to a transaction request (deprecated)

Adds a new document to a transaction request 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionRequestsApi.new


begin
  #Adding a document to a transaction request (deprecated)
  result = api_instance.add_document_transaction_request(transaction_request_iddocument_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DocumentResponse")
    p result
  else
    puts "Exception when calling TransactionRequestsApi->add_document_transaction_request: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_request_id** | [**String**](.md)| ID of the transaction request to add the document.  Example: &#x60;/v1/info/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/add_document?document_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60; | 
 **document_id** | [**String**](.md)| The ID of the document to be added to the transaction request.  Example: &#x60;/v1/info/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/add_document?document_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60; | 

### Return type

[**DocumentResponse**](DocumentResponse.md)

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



# **cancel_transaction_request**
> TransactionReqResponse cancel_transaction_request(transaction_request_idreason_cancellation)

Cancelling a transaction request

Cancels a transaction request 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionRequestsApi.new


begin
  #Cancelling a transaction request
  result = api_instance.cancel_transaction_request(transaction_request_idreason_cancellation)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionReqResponse")
    p result
  else
    puts "Exception when calling TransactionRequestsApi->cancel_transaction_request: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_request_id** | [**String**](.md)| ID of the transaction request to cancel.  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/cancel&#x60; | 
 **reason_cancellation** | **String**| Reason for the transaction request to cancel.  Example: &#x60;Not enough funds&#x60; | 

### Return type

[**TransactionReqResponse**](TransactionReqResponse.md)

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



# **confirm_transaction_request**
> TransactionReqResponse confirm_transaction_request(transaction_request_id)

Confirming a transaction request

Confirms a new transaction request 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionRequestsApi.new


begin
  #Confirming a transaction request
  result = api_instance.confirm_transaction_request(transaction_request_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionReqResponse")
    p result
  else
    puts "Exception when calling TransactionRequestsApi->confirm_transaction_request: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_request_id** | [**String**](.md)| ID of the transaction request to confirm.  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/confirm&#x60; | 

### Return type

[**TransactionReqResponse**](TransactionReqResponse.md)

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



# **get_transaction_request**
> TransactionReqResponse get_transaction_request(transaction_request_idopts)

Fetching a transaction request

Returns a single transaction request by the Transaction Request ID

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionRequestsApi.new

opts = { 
  versioned: true # Boolean | If false is passed, returns a Transaction request containing a not cached Transaction object  Example: `/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670?versioned=false`
}

begin
  #Fetching a transaction request
  result = api_instance.get_transaction_request(transaction_request_idopts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionReqResponse")
    p result
  else
    puts "Exception when calling TransactionRequestsApi->get_transaction_request: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_request_id** | [**String**](.md)| ID of the transaction request to get.  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 
 **versioned** | **Boolean**| If false is passed, returns a Transaction request containing a not cached Transaction object  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670?versioned&#x3D;false&#x60; | [optional] 

### Return type

[**TransactionReqResponse**](TransactionReqResponse.md)

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



# **get_transaction_requests**
> TransactionReqListResponse get_transaction_requests(opts)

Listing transaction requests

Get a list of transaction requests

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionRequestsApi.new

opts = { 
  page: 1 # Integer | The page number to request (defaults to 1)
  per: 10 # Integer | The number of results to load per page (defaults to 10)
  state: ['state_example'] # Array<String> | Returns transaction requests with specified states.  Example: `/v1/transaction_requests?state[]=pending&state[]=modified`
  currency: ['currency_example'] # Array<String> | Returns transaction requests with specified input_currency.  Example: `/v1/transaction_requests?currency[]=USD`
  created_at_from: 'created_at_from_example' # String | Returns transaction requests with specified created_at lower limit.  Example: `/v1/transaction_requests?created_at_from=2018-06-09`
  created_at_to: 'created_at_to_example' # String | Returns transaction requests with specified created_at upper limit.  Example: `/v1/transaction_requests?created_at_to=2018-06-08`
  amount_from: 'amount_from_example' # String | Returns transaction requests with specified amount lower limit.  Example: `/v1/transaction_requests?currency=NGN&amount_from=2.4319983`
  amount_to: 'amount_to_example' # String | Returns transaction requests with specified amount upper limit.  Example: `/v1/transaction_requests?currency=NGN&amount_to=2.4319985`
  sender_id: 'sender_id_example' # String | Returns transaction requests for the specified sender.  Example: `/v1/transaction_requests?sender_id=b41d3cb7-6c54-4245-85fc-8e30690eb0f7`
  versioned: true # Boolean | If false is passed, returns Transaction requests containing not cached Transaction objects  Example: `/v1/transaction_requests?versioned=false`
  tag: ['tag_example'] # Array<String> | Returns transaction requests with the specified tag(s). Tags are optional labels assigned to transaction requests for organizational purposes  Example: `/v1/transaction_requests?tag[]=square`
  ids: ['ids_example'] # Array<String> | Returns transaction requests with the specified id(s). This allows the fetching of multiple transaction requests by ids for efficiency  Example: `/v1/transaction_requests?ids[]=b41d3cb7-6c54-4245-85fc-8e30690eb0f7`
  included: ['included_example'] # Array<String> | Returns transaction requests with the specified payout currencies.  Example: `/v1/transaction_requests?included[]=KES`
  excluded: ['excluded_example'] # Array<String> | Returns transaction requests without the specified payout currencies.  Example: `/v1/transaction_requests?excluded[]=KES`
}

begin
  #Listing transaction requests
  result = api_instance.get_transaction_requests(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionReqListResponse")
    p result
  else
    puts "Exception when calling TransactionRequestsApi->get_transaction_requests: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The page number to request (defaults to 1) | [optional] 
 **per** | **Integer**| The number of results to load per page (defaults to 10) | [optional] 
 **state** | [**Array&lt;String&gt;**](String.md)| Returns transaction requests with specified states.  Example: &#x60;/v1/transaction_requests?state[]&#x3D;pending&amp;state[]&#x3D;modified&#x60; | [optional] 
 **currency** | [**Array&lt;String&gt;**](String.md)| Returns transaction requests with specified input_currency.  Example: &#x60;/v1/transaction_requests?currency[]&#x3D;USD&#x60; | [optional] 
 **created_at_from** | **String**| Returns transaction requests with specified created_at lower limit.  Example: &#x60;/v1/transaction_requests?created_at_from&#x3D;2018-06-09&#x60; | [optional] 
 **created_at_to** | **String**| Returns transaction requests with specified created_at upper limit.  Example: &#x60;/v1/transaction_requests?created_at_to&#x3D;2018-06-08&#x60; | [optional] 
 **amount_from** | **String**| Returns transaction requests with specified amount lower limit.  Example: &#x60;/v1/transaction_requests?currency&#x3D;NGN&amp;amount_from&#x3D;2.4319983&#x60; | [optional] 
 **amount_to** | **String**| Returns transaction requests with specified amount upper limit.  Example: &#x60;/v1/transaction_requests?currency&#x3D;NGN&amp;amount_to&#x3D;2.4319985&#x60; | [optional] 
 **sender_id** | **String**| Returns transaction requests for the specified sender.  Example: &#x60;/v1/transaction_requests?sender_id&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60; | [optional] 
 **versioned** | **Boolean**| If false is passed, returns Transaction requests containing not cached Transaction objects  Example: &#x60;/v1/transaction_requests?versioned&#x3D;false&#x60; | [optional] 
 **tag** | [**Array&lt;String&gt;**](String.md)| Returns transaction requests with the specified tag(s). Tags are optional labels assigned to transaction requests for organizational purposes  Example: &#x60;/v1/transaction_requests?tag[]&#x3D;square&#x60; | [optional] 
 **ids** | [**Array&lt;String&gt;**](String.md)| Returns transaction requests with the specified id(s). This allows the fetching of multiple transaction requests by ids for efficiency  Example: &#x60;/v1/transaction_requests?ids[]&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60; | [optional] 
 **included** | [**Array&lt;String&gt;**](String.md)| Returns transaction requests with the specified payout currencies.  Example: &#x60;/v1/transaction_requests?included[]&#x3D;KES&#x60; | [optional] 
 **excluded** | [**Array&lt;String&gt;**](String.md)| Returns transaction requests without the specified payout currencies.  Example: &#x60;/v1/transaction_requests?excluded[]&#x3D;KES&#x60; | [optional] 

### Return type

[**TransactionReqListResponse**](TransactionReqListResponse.md)

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



# **post_transaction_request**
> TransactionReqResponse post_transaction_request(transaction_req_request)

Creating a transaction request

Creates a new transaction request 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionRequestsApi.new


begin
  #Creating a transaction request
  result = api_instance.post_transaction_request(transaction_req_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionReqResponse")
    p result
  else
    puts "Exception when calling TransactionRequestsApi->post_transaction_request: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_req_request** | [**TransactionReqRequest**](TransactionReqRequest.md)|  | 

### Return type

[**TransactionReqResponse**](TransactionReqResponse.md)

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



# **restful_add_document_transaction_request**
> DocumentResponse restful_add_document_transaction_request(transaction_request_iddocument_id)

Adding a document to a transaction request

Adds a new document to a transaction request 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionRequestsApi.new


begin
  #Adding a document to a transaction request
  result = api_instance.restful_add_document_transaction_request(transaction_request_iddocument_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DocumentResponse")
    p result
  else
    puts "Exception when calling TransactionRequestsApi->restful_add_document_transaction_request: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_request_id** | [**String**](.md)| ID of the transaction request to add the document.  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/add&#x60; | 
 **document_id** | [**String**](.md)| The ID of the document to be added to the transaction request.  Example: &#x60;/v1/transaction_requests/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/add&#x60; | 

### Return type

[**DocumentResponse**](DocumentResponse.md)

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



# **transaction_request_limits**
> TransactionReqLimitsResponse transaction_request_limits

Specifies the limits for transaction requests

Specifies the minimum and maximum limits for transaction requests

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionRequestsApi.new

begin
  #Specifies the limits for transaction requests
  result = api_instance.transaction_request_limits
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionReqLimitsResponse")
    p result
  else
    puts "Exception when calling TransactionRequestsApi->transaction_request_limits: #{e}"
  end
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TransactionReqLimitsResponse**](TransactionReqLimitsResponse.md)

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



# **validate_transaction_requests**
> TransactionReqResponse validate_transaction_requests(transaction_req_request)

Validates a transaction request payload

Validates fields in a transaction request payload and displays invalid or missing fields

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::TransactionRequestsApi.new


begin
  #Validates a transaction request payload
  result = api_instance.validate_transaction_requests(transaction_req_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("TransactionReqResponse")
    p result
  else
    puts "Exception when calling TransactionRequestsApi->validate_transaction_requests: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_req_request** | [**TransactionReqRequest**](TransactionReqRequest.md)|  | 

### Return type

[**TransactionReqResponse**](TransactionReqResponse.md)

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



