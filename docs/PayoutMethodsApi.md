# TransferZero::PayoutMethodsApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_payout_method**](PayoutMethodsApi.md#delete_payout_method) | **DELETE** /payout_methods/{Payout Method ID} | Deleting a payout method
[**get_payout_method**](PayoutMethodsApi.md#get_payout_method) | **GET** /payout_methods/{Payout Method ID} | Fetching a payout method
[**get_payout_methods**](PayoutMethodsApi.md#get_payout_methods) | **GET** /payout_methods | Listing payout methods
[**patch_payout_method**](PayoutMethodsApi.md#patch_payout_method) | **PATCH** /payout_methods/{Payout Method ID} | Updating a payout method
[**post_payout_methods**](PayoutMethodsApi.md#post_payout_methods) | **POST** /payout_methods | Creating a payout method


# **delete_payout_method**
> PayoutMethodResponse delete_payout_method(payout_method_id)

Deleting a payout method

Deletes a single payout method by the Payout Method ID

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PayoutMethodsApi.new


begin
  #Deleting a payout method
  result = api_instance.delete_payout_method(payout_method_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PayoutMethodResponse")
    p result
  else
    puts "Exception when calling PayoutMethodsApi->delete_payout_method: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_method_id** | [**String**](.md)| ID of the payout method to delete.  Example: &#x60;/v1/payout_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 

### Return type

[**PayoutMethodResponse**](PayoutMethodResponse.md)

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



# **get_payout_method**
> PayoutMethodResponse get_payout_method(payout_method_id)

Fetching a payout method

Show a payout method by id

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PayoutMethodsApi.new


begin
  #Fetching a payout method
  result = api_instance.get_payout_method(payout_method_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PayoutMethodResponse")
    p result
  else
    puts "Exception when calling PayoutMethodsApi->get_payout_method: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_method_id** | [**String**](.md)| ID of the payout method to get.  Example: &#x60;/v1/payout_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 

### Return type

[**PayoutMethodResponse**](PayoutMethodResponse.md)

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



# **get_payout_methods**
> PayoutMethodListResponse get_payout_methods(opts)

Listing payout methods

List available payout methods

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PayoutMethodsApi.new

opts = { 
  state: ['state_example'] # Array<String> | Allows filtering results by `state` of the payout method.  Example: `/v1/payout_methods?state[]=enabled`
  type: ['type_example'] # Array<String> | Allows filtering results by the specified type.  Example: `/v1/payout_methods?type[]=NGN::Bank`
  sender_id: 'sender_id_example' # String | Allows filtering results by the specified sender id.  Example: `/v1/payout_methods?sender_id=bf9ff782-e182-45ac-abea-5bce83ad6670`
  page: 1 # Integer | The page number to request (defaults to 1)
  per: 10 # Integer | The number of results to load per page (defaults to 10)
  created_at_from: 'created_at_from_example' # String | Start date to filter recipients by created_at range Allows filtering results by the specified `created_at` timeframe.  Example: `/v1/recipients?created_at_from=2018-06-06&created_at_to=2018-06-08`
  created_at_to: 'created_at_to_example' # String | End date to filter recipients by created_at range Allows filtering results by the specified `created_at` timeframe.  Example: `/v1/recipients?created_at_from=2018-06-06&created_at_to=2018-06-08`
}

begin
  #Listing payout methods
  result = api_instance.get_payout_methods(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PayoutMethodListResponse")
    p result
  else
    puts "Exception when calling PayoutMethodsApi->get_payout_methods: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | [**Array&lt;String&gt;**](String.md)| Allows filtering results by &#x60;state&#x60; of the payout method.  Example: &#x60;/v1/payout_methods?state[]&#x3D;enabled&#x60; | [optional] 
 **type** | [**Array&lt;String&gt;**](String.md)| Allows filtering results by the specified type.  Example: &#x60;/v1/payout_methods?type[]&#x3D;NGN::Bank&#x60; | [optional] 
 **sender_id** | **String**| Allows filtering results by the specified sender id.  Example: &#x60;/v1/payout_methods?sender_id&#x3D;bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | [optional] 
 **page** | **Integer**| The page number to request (defaults to 1) | [optional] 
 **per** | **Integer**| The number of results to load per page (defaults to 10) | [optional] 
 **created_at_from** | **String**| Start date to filter recipients by created_at range Allows filtering results by the specified &#x60;created_at&#x60; timeframe.  Example: &#x60;/v1/recipients?created_at_from&#x3D;2018-06-06&amp;created_at_to&#x3D;2018-06-08&#x60; | [optional] 
 **created_at_to** | **String**| End date to filter recipients by created_at range Allows filtering results by the specified &#x60;created_at&#x60; timeframe.  Example: &#x60;/v1/recipients?created_at_from&#x3D;2018-06-06&amp;created_at_to&#x3D;2018-06-08&#x60; | [optional] 

### Return type

[**PayoutMethodListResponse**](PayoutMethodListResponse.md)

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



# **patch_payout_method**
> PayoutMethodResponse patch_payout_method(payout_method_idpayout_method)

Updating a payout method

Updates the payout method specified in the URL path.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PayoutMethodsApi.new


begin
  #Updating a payout method
  result = api_instance.patch_payout_method(payout_method_idpayout_method)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PayoutMethodResponse")
    p result
  else
    puts "Exception when calling PayoutMethodsApi->patch_payout_method: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_method_id** | [**String**](.md)| ID of the payout method to get.  Example: &#x60;/v1/payout_methods/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 
 **payout_method** | [**PayoutMethod**](PayoutMethod.md)|  | 

### Return type

[**PayoutMethodResponse**](PayoutMethodResponse.md)

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



# **post_payout_methods**
> PayoutMethodResponse post_payout_methods(payout_method_request)

Creating a payout method

Creates a new payout method in our system. 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PayoutMethodsApi.new


begin
  #Creating a payout method
  result = api_instance.post_payout_methods(payout_method_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PayoutMethodResponse")
    p result
  else
    puts "Exception when calling PayoutMethodsApi->post_payout_methods: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_method_request** | [**PayoutMethodRequest**](PayoutMethodRequest.md)|  | 

### Return type

[**PayoutMethodResponse**](PayoutMethodResponse.md)

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



