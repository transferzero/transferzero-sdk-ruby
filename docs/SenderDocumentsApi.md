# TransferZero::SenderDocumentsApi

All URIs are relative to *https://api-sandbox.bitpesa.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_document_sender**](SenderDocumentsApi.md#add_document_sender) | **POST** /senders/{Sender ID}/documents/{Document ID}/add | Adding a document to a sender
[**get_sender_document**](SenderDocumentsApi.md#get_sender_document) | **GET** /senders/{Sender ID}/documents/{Document ID} | Fetching a document belonging to a sender
[**get_sender_documents**](SenderDocumentsApi.md#get_sender_documents) | **GET** /senders/{Sender ID}/documents | Getting a list of documents belonging to a sender
[**remove_document_sender**](SenderDocumentsApi.md#remove_document_sender) | **POST** /senders/{Sender ID}/documents/{Document ID}/remove | Removing a document from a sender


# **add_document_sender**
> DocumentResponse add_document_sender(sender_iddocument_id)

Adding a document to a sender

Adds a new document to a sender 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::SenderDocumentsApi.new


begin
  #Adding a document to a sender
  result = api_instance.add_document_sender(sender_iddocument_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DocumentResponse")
    p result
  else
    puts "Exception when calling SenderDocumentsApi->add_document_sender: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | [**String**](.md)| ID of the sender to add the document.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/add&#x60; | 
 **document_id** | [**String**](.md)| The ID of the document to be added to the sender.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/add&#x60; | 

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



# **get_sender_document**
> DocumentResponse get_sender_document(sender_iddocument_id)

Fetching a document belonging to a sender

Returns a single document belonging to a sender by the Document ID

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::SenderDocumentsApi.new


begin
  #Fetching a document belonging to a sender
  result = api_instance.get_sender_document(sender_iddocument_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DocumentResponse")
    p result
  else
    puts "Exception when calling SenderDocumentsApi->get_sender_document: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | [**String**](.md)| ID of the sender who owns the requested document.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60; | 
 **document_id** | [**String**](.md)| ID of the document to get.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87&#x60; | 

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



# **get_sender_documents**
> DocumentListResponse get_sender_documents(sender_idopts)

Getting a list of documents belonging to a sender

Fetches a list of documents belonging to a sender.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::SenderDocumentsApi.new

opts = { 
  page: 1 # Integer | The page number to request (defaults to 1)
  per: 10 # Integer | The number of results to load per page (defaults to 10)
}

begin
  #Getting a list of documents belonging to a sender
  result = api_instance.get_sender_documents(sender_idopts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DocumentListResponse")
    p result
  else
    puts "Exception when calling SenderDocumentsApi->get_sender_documents: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | [**String**](.md)| ID of the sender who owns the requested documents.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents&#x60; | 
 **page** | **Integer**| The page number to request (defaults to 1) | [optional] 
 **per** | **Integer**| The number of results to load per page (defaults to 10) | [optional] 

### Return type

[**DocumentListResponse**](DocumentListResponse.md)

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



# **remove_document_sender**
> DocumentResponse remove_document_sender(sender_iddocument_id)

Removing a document from a sender

Removes a document from a sender 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::SenderDocumentsApi.new


begin
  #Removing a document from a sender
  result = api_instance.remove_document_sender(sender_iddocument_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("DocumentResponse")
    p result
  else
    puts "Exception when calling SenderDocumentsApi->remove_document_sender: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | [**String**](.md)| ID of the sender with the document to remove.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/remove&#x60; | 
 **document_id** | [**String**](.md)| The ID of the document to be removed from the sender.  Example: &#x60;/v1/senders/bf9ff782-e182-45ac-abea-5bce83ad6670/documents/26ec8517-2f0d-48c0-b74f-0bccb9ab3a87/remove&#x60; | 

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



