# TransferZero::LogsApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_webhook_log**](LogsApi.md#get_webhook_log) | **GET** /logs/{Webhook Log ID} | Fetch an individual webhook log
[**get_webhook_logs**](LogsApi.md#get_webhook_logs) | **GET** /logs/webhooks | Fetch a list of webhook logs


# **get_webhook_log**
> WebhookLogResponse get_webhook_log(webhook_log_id)

Fetch an individual webhook log

Returns a single webhook log based on the webhook log ID.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::LogsApi.new


begin
  #Fetch an individual webhook log
  result = api_instance.get_webhook_log(webhook_log_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("WebhookLogResponse")
    p result
  else
    puts "Exception when calling LogsApi->get_webhook_log: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_log_id** | [**String**](.md)| ID of the webhook log to retrieve  Example: &#x60;/v1/logs/9d1ad631-f34a-4cff-9a7e-2c83e3a556df&#x60; | 

### Return type

[**WebhookLogResponse**](WebhookLogResponse.md)

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



# **get_webhook_logs**
> WebhookLogListResponse get_webhook_logs(opts)

Fetch a list of webhook logs

Returns a list of webhook logs. Response includes pagination.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::LogsApi.new

opts = { 
  page: 1 # Integer | The page number to request (defaults to 1)
  per: 10 # Integer | The number of results to load per page (defaults to 10)
  created_at_from: 'created_at_from_example' # String | Start date to filter recipients by created_at range Allows filtering results by the specified `created_at` timeframe.  Example: `/v1/recipients?created_at_from=2018-06-06&created_at_to=2018-06-08`
  created_at_to: 'created_at_to_example' # String | End date to filter recipients by created_at range Allows filtering results by the specified `created_at` timeframe.  Example: `/v1/recipients?created_at_from=2018-06-06&created_at_to=2018-06-08`
}

begin
  #Fetch a list of webhook logs
  result = api_instance.get_webhook_logs(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("WebhookLogListResponse")
    p result
  else
    puts "Exception when calling LogsApi->get_webhook_logs: #{e}"
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

### Return type

[**WebhookLogListResponse**](WebhookLogListResponse.md)

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



