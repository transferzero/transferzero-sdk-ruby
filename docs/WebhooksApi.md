# TransferZero::WebhooksApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{Webhook ID} | Unsubscribing from a webhook
[**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /webhooks/{Webhook ID} | Find a webhook&#39;s details
[**get_webhook_events**](WebhooksApi.md#get_webhook_events) | **GET** /webhooks/events | Find possible webhook events
[**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /webhooks | Listing webhooks
[**post_webhooks**](WebhooksApi.md#post_webhooks) | **POST** /webhooks | Creating a webhook


# **delete_webhook**
> WebhookDefinitionResponse delete_webhook(webhook_id)

Unsubscribing from a webhook

Unsubscribes from a webhook specified

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::WebhooksApi.new


begin
  #Unsubscribing from a webhook
  result = api_instance.delete_webhook(webhook_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("WebhookDefinitionResponse")
    p result
  else
    puts "Exception when calling WebhooksApi->delete_webhook: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**| The ID of webhook to cancel.  Example: &#x60;/v1/webhooks/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60; | 

### Return type

[**WebhookDefinitionResponse**](WebhookDefinitionResponse.md)

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



# **get_webhook**
> WebhookDefinitionResponse get_webhook(webhook_id)

Find a webhook's details

Look up a webhook's details with its ID

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::WebhooksApi.new


begin
  #Find a webhook's details
  result = api_instance.get_webhook(webhook_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("WebhookDefinitionResponse")
    p result
  else
    puts "Exception when calling WebhooksApi->get_webhook: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**](.md)| The ID of the Webhook to look up  Example: &#x60;/v1/webhooks/9d4d7b73-a94c-4979-ab57-09074fd55d33&#x60; | 

### Return type

[**WebhookDefinitionResponse**](WebhookDefinitionResponse.md)

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



# **get_webhook_events**
> WebhookDefinitionEventListResponse get_webhook_events

Find possible webhook events

Fetching possible webhook events

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::WebhooksApi.new

begin
  #Find possible webhook events
  result = api_instance.get_webhook_events
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("WebhookDefinitionEventListResponse")
    p result
  else
    puts "Exception when calling WebhooksApi->get_webhook_events: #{e}"
  end
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookDefinitionEventListResponse**](WebhookDefinitionEventListResponse.md)

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



# **get_webhooks**
> WebhookDefinitionListResponse get_webhooks(opts)

Listing webhooks

Get a list of created webhooks

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::WebhooksApi.new

opts = { 
  page: 1 # Integer | The page number to request (defaults to 1)
  per: 10 # Integer | The number of results to load per page (defaults to 10)
}

begin
  #Listing webhooks
  result = api_instance.get_webhooks(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("WebhookDefinitionListResponse")
    p result
  else
    puts "Exception when calling WebhooksApi->get_webhooks: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The page number to request (defaults to 1) | [optional] 
 **per** | **Integer**| The number of results to load per page (defaults to 10) | [optional] 

### Return type

[**WebhookDefinitionListResponse**](WebhookDefinitionListResponse.md)

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



# **post_webhooks**
> WebhookDefinitionResponse post_webhooks(webhook_definition_request)

Creating a webhook

Creates a new webhook, subscribing the provided endpoint to the specified event(s) 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::WebhooksApi.new


begin
  #Creating a webhook
  result = api_instance.post_webhooks(webhook_definition_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("WebhookDefinitionResponse")
    p result
  else
    puts "Exception when calling WebhooksApi->post_webhooks: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_definition_request** | [**WebhookDefinitionRequest**](WebhookDefinitionRequest.md)|  | 

### Return type

[**WebhookDefinitionResponse**](WebhookDefinitionResponse.md)

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



