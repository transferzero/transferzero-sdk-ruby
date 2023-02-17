# TransferZero::APILogsApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_api_log**](APILogsApi.md#get_api_log) | **GET** /api_logs/{API Log ID} | Fetch an individual API log
[**get_api_logs**](APILogsApi.md#get_api_logs) | **GET** /api_logs | Fetch a list of API logs


# **get_api_log**
> ApiLogResponse get_api_log(api_log_id)

Fetch an individual API log

Returns a single API log based on the API log ID.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::APILogsApi.new


begin
  #Fetch an individual API log
  result = api_instance.get_api_log(api_log_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("ApiLogResponse")
    p result
  else
    puts "Exception when calling APILogsApi->get_api_log: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_log_id** | [**String**](.md)| ID of the API log to retrieve  Example: &#x60;/v1/api_logs/00485ce9-532b-45e7-8518-7e5582242407&#x60; | 

### Return type

[**ApiLogResponse**](ApiLogResponse.md)

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



# **get_api_logs**
> ApiLogListResponse get_api_logs(opts)

Fetch a list of API logs

Returns a list of API logs. Also includes information relating to the original request.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::APILogsApi.new

opts = { 
  page: 1 # Integer | The page number to request (defaults to 1)
  per: 10 # Integer | The number of results to load per page (defaults to 10)
  created_at_from: 'created_at_from_example' # String | Start date to filter recipients by created_at range Allows filtering results by the specified `created_at` timeframe.  Example: `/v1/recipients?created_at_from=2018-06-06&created_at_to=2018-06-08`
  created_at_to: 'created_at_to_example' # String | End date to filter recipients by created_at range Allows filtering results by the specified `created_at` timeframe.  Example: `/v1/recipients?created_at_from=2018-06-06&created_at_to=2018-06-08`
}

begin
  #Fetch a list of API logs
  result = api_instance.get_api_logs(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("ApiLogListResponse")
    p result
  else
    puts "Exception when calling APILogsApi->get_api_logs: #{e}"
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

[**ApiLogListResponse**](ApiLogListResponse.md)

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



