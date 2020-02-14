# TransferZero::DocumentsApi

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_document**](DocumentsApi.md#delete_document) | **DELETE** /documents/{Document ID} | Deleting a document
[**get_document**](DocumentsApi.md#get_document) | **GET** /documents/{Document ID} | Fetching a document
[**get_documents**](DocumentsApi.md#get_documents) | **GET** /documents | Getting a list of documents
[**post_documents**](DocumentsApi.md#post_documents) | **POST** /documents | Creating a document


# **delete_document**
> DocumentResponse delete_document(document_idopts)

Deleting a document

Deletes a single document by the Document ID

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::DocumentsApi.new

opts = { 
  sender_id: 'sender_id_example' # String | Allows filtering results by `sender_id`.  Example: `/v1/transactions?sender_id=b41d3cb7-6c54-4245-85fc-8e30690eb0f7`
}

begin
  #Deleting a document
  result = api_instance.delete_document(document_idopts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DocumentResponse")
    p result
  else
    puts "Exception when calling DocumentsApi->delete_document: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | [**String**](.md)| ID of the document to delete.  Example: &#x60;/v1/document/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 
 **sender_id** | **String**| Allows filtering results by &#x60;sender_id&#x60;.  Example: &#x60;/v1/transactions?sender_id&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60; | [optional] 

### Return type

[**DocumentResponse**](DocumentResponse.md)

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



# **get_document**
> DocumentResponse get_document(document_idopts)

Fetching a document

Returns a single document by the Documents ID

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::DocumentsApi.new

opts = { 
  sender_id: 'sender_id_example' # String | Allows filtering results by `sender_id`.  Example: `/v1/transactions?sender_id=b41d3cb7-6c54-4245-85fc-8e30690eb0f7`
}

begin
  #Fetching a document
  result = api_instance.get_document(document_idopts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DocumentResponse")
    p result
  else
    puts "Exception when calling DocumentsApi->get_document: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | [**String**](.md)| ID of the document to get.  Example: &#x60;/v1/documents/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 
 **sender_id** | **String**| Allows filtering results by &#x60;sender_id&#x60;.  Example: &#x60;/v1/transactions?sender_id&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60; | [optional] 

### Return type

[**DocumentResponse**](DocumentResponse.md)

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



# **get_documents**
> DocumentListResponse get_documents(opts)

Getting a list of documents

Fetches a list of documents.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::DocumentsApi.new

opts = { 
  page: 1 # Integer | The page number to request (defaults to 1)
  per: 10 # Integer | The number of results to load per page (defaults to 10)
  sender_id: 'sender_id_example' # String | Allows filtering results by `sender_id`.  Example: `/v1/transactions?sender_id=b41d3cb7-6c54-4245-85fc-8e30690eb0f7`
}

begin
  #Getting a list of documents
  result = api_instance.get_documents(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DocumentListResponse")
    p result
  else
    puts "Exception when calling DocumentsApi->get_documents: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The page number to request (defaults to 1) | [optional] 
 **per** | **Integer**| The number of results to load per page (defaults to 10) | [optional] 
 **sender_id** | **String**| Allows filtering results by &#x60;sender_id&#x60;.  Example: &#x60;/v1/transactions?sender_id&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60; | [optional] 

### Return type

[**DocumentListResponse**](DocumentListResponse.md)

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



# **post_documents**
> DocumentResponse post_documents(document_request)

Creating a document

Creates a new document

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::DocumentsApi.new


begin
  #Creating a document
  result = api_instance.post_documents(document_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DocumentResponse")
    p result
  else
    puts "Exception when calling DocumentsApi->post_documents: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_request** | [**DocumentRequest**](DocumentRequest.md)|  | 

### Return type

[**DocumentResponse**](DocumentResponse.md)

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



