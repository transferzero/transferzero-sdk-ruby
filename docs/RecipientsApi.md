# TransferZero::RecipientsApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_recipient**](RecipientsApi.md#delete_recipient) | **DELETE** /recipients/{Recipient ID} | Cancelling a recipient
[**get_recipients**](RecipientsApi.md#get_recipients) | **GET** /recipients | Getting a list of recipients with filtering
[**patch_recipient**](RecipientsApi.md#patch_recipient) | **PATCH** /recipients/{Recipient ID} | Updating a recipient


# **delete_recipient**
> RecipientResponse delete_recipient(recipient_id)

Cancelling a recipient

Cancels the payment to the recipient specified in the URL path.  Please note only recipients where the `may_cancel` attribute is true can be cancelled.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::RecipientsApi.new


begin
  #Cancelling a recipient
  result = api_instance.delete_recipient(recipient_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("RecipientResponse")
    p result
  else
    puts "Exception when calling RecipientsApi->delete_recipient: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recipient_id** | [**String**](.md)| ID of recipient to cancel.  Example: &#x60;/v1/recipients/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60; | 

### Return type

[**RecipientResponse**](RecipientResponse.md)

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



# **get_recipients**
> RecipientListResponse get_recipients(opts)

Getting a list of recipients with filtering

Fetches details of all recipients.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::RecipientsApi.new

opts = { 
  page: 1 # Integer | The page number to request (defaults to 1)
  per: 10 # Integer | The number of results to load per page (defaults to 10)
  created_at_from: 'created_at_from_example' # String | Start date to filter recipients by created_at range Allows filtering results by the specified `created_at` timeframe.  Example: `/v1/recipients?created_at_from=2018-06-06&created_at_to=2018-06-08`
  created_at_to: 'created_at_to_example' # String | End date to filter recipients by created_at range Allows filtering results by the specified `created_at` timeframe.  Example: `/v1/recipients?created_at_from=2018-06-06&created_at_to=2018-06-08`
  amount_from: 'amount_from_example' # String | Minimum amount to filter recipients by amount range.  Allows filtering results by the specified `amount` range. When using this filter, the `currency` should also be specified.  Example: `/v1/recipients?currency=NGN&amount_from=83.76672339&amount_to=83.76672339`
  amount_to: 'amount_to_example' # String | Max amount to filter recipients by amount range.  Allows filtering results by the specified `amount` range. When using this filter, the `currency` should also be specified.  Example: `/v1/recipients?currency=NGN&amount_from=83.76672339&amount_to=83.76672339`
  state: ['state_example'] # Array<String> | Allows filtering results by `state` of recipient. See [API Documentation - Recipient state](https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#state-1) for possible states.  Example: `/v1/recipients?state[]=error&state[]=initial`
  currency: ['currency_example'] # Array<String> | Allows filtering results by `input_currency`.  Additionally required when filtering by an amount range Example: `/v1/recipients?currency[]=KES&currency[]=NGN`
}

begin
  #Getting a list of recipients with filtering
  result = api_instance.get_recipients(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("RecipientListResponse")
    p result
  else
    puts "Exception when calling RecipientsApi->get_recipients: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The page number to request (defaults to 1) | [optional] 
 **per** | **Integer**| The number of results to load per page (defaults to 10) | [optional] 
 **created_at_from** | **String**| Start date to filter recipients by created_at range Allows filtering results by the specified &#x60;created_at&#x60; timeframe.  Example: &#x60;/v1/recipients?created_at_from&#x3D;2018-06-06&amp;created_at_to&#x3D;2018-06-08&#x60; | [optional] 
 **created_at_to** | **String**| End date to filter recipients by created_at range Allows filtering results by the specified &#x60;created_at&#x60; timeframe.  Example: &#x60;/v1/recipients?created_at_from&#x3D;2018-06-06&amp;created_at_to&#x3D;2018-06-08&#x60; | [optional] 
 **amount_from** | **String**| Minimum amount to filter recipients by amount range.  Allows filtering results by the specified &#x60;amount&#x60; range. When using this filter, the &#x60;currency&#x60; should also be specified.  Example: &#x60;/v1/recipients?currency&#x3D;NGN&amp;amount_from&#x3D;83.76672339&amp;amount_to&#x3D;83.76672339&#x60; | [optional] 
 **amount_to** | **String**| Max amount to filter recipients by amount range.  Allows filtering results by the specified &#x60;amount&#x60; range. When using this filter, the &#x60;currency&#x60; should also be specified.  Example: &#x60;/v1/recipients?currency&#x3D;NGN&amp;amount_from&#x3D;83.76672339&amp;amount_to&#x3D;83.76672339&#x60; | [optional] 
 **state** | [**Array&lt;String&gt;**](String.md)| Allows filtering results by &#x60;state&#x60; of recipient. See [API Documentation - Recipient state](https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#state-1) for possible states.  Example: &#x60;/v1/recipients?state[]&#x3D;error&amp;state[]&#x3D;initial&#x60; | [optional] 
 **currency** | [**Array&lt;String&gt;**](String.md)| Allows filtering results by &#x60;input_currency&#x60;.  Additionally required when filtering by an amount range Example: &#x60;/v1/recipients?currency[]&#x3D;KES&amp;currency[]&#x3D;NGN&#x60; | [optional] 

### Return type

[**RecipientListResponse**](RecipientListResponse.md)

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



# **patch_recipient**
> RecipientResponse patch_recipient(recipient_idrecipient_request)

Updating a recipient

Updates the recipient specified in the URL path.  Please note that only recipients where the `editable` field is true can be modified. Once the recipient is modified any subsequent payout tries will be sent to the updated details.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::RecipientsApi.new


begin
  #Updating a recipient
  result = api_instance.patch_recipient(recipient_idrecipient_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("RecipientResponse")
    p result
  else
    puts "Exception when calling RecipientsApi->patch_recipient: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recipient_id** | [**String**](.md)| ID of recipient to update.  Example: &#x60;/v1/recipients/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60; | 
 **recipient_request** | [**RecipientRequest**](RecipientRequest.md)|  | 

### Return type

[**RecipientResponse**](RecipientResponse.md)

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



