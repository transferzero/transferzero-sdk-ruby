# TransferZero::PayinMethodsApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_payin_method**](PayinMethodsApi.md#delete_payin_method) | **DELETE** /payin_methods/{PayinMethod ID} | Deleting a payin method
[**get_payin_method**](PayinMethodsApi.md#get_payin_method) | **GET** /payin_methods/{PayinMethod ID} | Fetching a payin method
[**patch_payin_method**](PayinMethodsApi.md#patch_payin_method) | **PATCH** /payin_methods/{PayinMethod ID} | Updating a payin method
[**retry_payin_method**](PayinMethodsApi.md#retry_payin_method) | **POST** /payin_methods/{PayinMethod ID}/retry | Retries PayinMethod


# **delete_payin_method**
> PayinMethodResponse delete_payin_method(payin_method_id)

Deleting a payin method

Initiates a cancellation request for the specified payin method

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PayinMethodsApi.new


begin
  #Deleting a payin method
  result = api_instance.delete_payin_method(payin_method_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PayinMethodResponse")
    p result
  else
    puts "Exception when calling PayinMethodsApi->delete_payin_method: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payin_method_id** | [**String**](.md)| ID of the payin method to delete.  Example: &#x60;/v1/payin_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 

### Return type

[**PayinMethodResponse**](PayinMethodResponse.md)

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



# **get_payin_method**
> PayinMethodResponse get_payin_method(payin_method_id)

Fetching a payin method

Show a payin method by id

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PayinMethodsApi.new


begin
  #Fetching a payin method
  result = api_instance.get_payin_method(payin_method_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PayinMethodResponse")
    p result
  else
    puts "Exception when calling PayinMethodsApi->get_payin_method: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payin_method_id** | [**String**](.md)| ID of the payin method to get.  Example: &#x60;/v1/payin_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 

### Return type

[**PayinMethodResponse**](PayinMethodResponse.md)

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



# **patch_payin_method**
> PayinMethodResponse patch_payin_method(payin_method_idpayin_method)

Updating a payin method

Updates the payin method specified in the URL path.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PayinMethodsApi.new


begin
  #Updating a payin method
  result = api_instance.patch_payin_method(payin_method_idpayin_method)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PayinMethodResponse")
    p result
  else
    puts "Exception when calling PayinMethodsApi->patch_payin_method: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payin_method_id** | [**String**](.md)| ID of the payin method to get.  Example: &#x60;/v1/payin_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 
 **payin_method** | [**PayinMethod**](PayinMethod.md)|  | 

### Return type

[**PayinMethodResponse**](PayinMethodResponse.md)

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



# **retry_payin_method**
> retry_payin_method(payin_method_id)

Retries PayinMethod

Retries the collection process for the payin method.  Please note only payin methods in `error` state can be retried.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PayinMethodsApi.new


begin
  #Retries PayinMethod
  api_instance.retry_payin_method(payin_method_id)
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("")
    p result
  else
    puts "Exception when calling PayinMethodsApi->retry_payin_method: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payin_method_id** | [**String**](.md)| ID of the payin method whose collection process should be retried  Example: &#x60;/v1/payin_methods/9d4d7b73-a94c-4979-ab57-09074fd55d33/retry&#x60; | 

### Return type

nil (empty response body)

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
 - **Accept**: Not defined



