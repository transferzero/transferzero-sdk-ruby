# TransferZero::SendersApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_sender**](SendersApi.md#delete_sender) | **DELETE** /senders/{Sender ID} | Deleting a sender
[**get_sender**](SendersApi.md#get_sender) | **GET** /senders/{Sender ID} | Fetching a sender
[**get_senders**](SendersApi.md#get_senders) | **GET** /senders | Listing senders
[**patch_sender**](SendersApi.md#patch_sender) | **PATCH** /senders/{Sender ID} | Updating a sender
[**post_senders**](SendersApi.md#post_senders) | **POST** /senders | Creating a sender


# **delete_sender**
> SenderResponse delete_sender(sender_id)

Deleting a sender

Deletes a single sender by the Sender ID

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::SendersApi.new


begin
  #Deleting a sender
  result = api_instance.delete_sender(sender_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("SenderResponse")
    p result
  else
    puts "Exception when calling SendersApi->delete_sender: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | [**String**](.md)| ID of the sender to delete.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 

### Return type

[**SenderResponse**](SenderResponse.md)

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



# **get_sender**
> SenderResponse get_sender(sender_id)

Fetching a sender

Returns a single sender by the Sender ID

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::SendersApi.new


begin
  #Fetching a sender
  result = api_instance.get_sender(sender_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("SenderResponse")
    p result
  else
    puts "Exception when calling SendersApi->get_sender: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | [**String**](.md)| ID of the sender to get.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 

### Return type

[**SenderResponse**](SenderResponse.md)

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



# **get_senders**
> SenderListResponse get_senders(opts)

Listing senders

Get a list of available senders

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::SendersApi.new

opts = { 
  page: 1 # Integer | The page number to request (defaults to 1)
  per: 10 # Integer | The number of results to load per page (defaults to 10)
  created_at_from: 'created_at_from_example' # String | Start date to filter recipients by created_at range Allows filtering results by the specified `created_at` timeframe.  Example: `/v1/recipients?created_at_from=2018-06-06&created_at_to=2018-06-08`
  created_at_to: 'created_at_to_example' # String | End date to filter recipients by created_at range Allows filtering results by the specified `created_at` timeframe.  Example: `/v1/recipients?created_at_from=2018-06-06&created_at_to=2018-06-08`
  external_id: 'external_id_example' # String | Allows filtering results by `external_id`.  Example: `/v1/senders?external_id=26ec8517-2f0d-48c0-b74f-0bccb9ab3a87`
}

begin
  #Listing senders
  result = api_instance.get_senders(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("SenderListResponse")
    p result
  else
    puts "Exception when calling SendersApi->get_senders: #{e}"
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
 **external_id** | **String**| Allows filtering results by &#x60;external_id&#x60;.  Example: &#x60;/v1/senders?external_id&#x3D;26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60; | [optional] 

### Return type

[**SenderListResponse**](SenderListResponse.md)

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



# **patch_sender**
> SenderResponse patch_sender(sender_idsender_request)

Updating a sender

Updates the sender specified in the URL path.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::SendersApi.new


begin
  #Updating a sender
  result = api_instance.patch_sender(sender_idsender_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("SenderResponse")
    p result
  else
    puts "Exception when calling SendersApi->patch_sender: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | [**String**](.md)| ID of the sender to get.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 
 **sender_request** | [**SenderRequest**](SenderRequest.md)|  | 

### Return type

[**SenderResponse**](SenderResponse.md)

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



# **post_senders**
> SenderResponse post_senders(sender_request)

Creating a sender

Creates a new sender in our system. 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::SendersApi.new


begin
  #Creating a sender
  result = api_instance.post_senders(sender_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("SenderResponse")
    p result
  else
    puts "Exception when calling SendersApi->post_senders: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_request** | [**SenderRequest**](SenderRequest.md)|  | 

### Return type

[**SenderResponse**](SenderResponse.md)

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



