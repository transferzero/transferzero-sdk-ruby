# TransferZero::PoliticallyExposedPeopleApi

All URIs are relative to *https://api-sandbox.bitpesa.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_politically_exposed_person**](PoliticallyExposedPeopleApi.md#delete_politically_exposed_person) | **DELETE** /politically_exposed_people/{PoliticallyExposedPerson ID} | Deleting a politically exposed person
[**get_politically_exposed_people**](PoliticallyExposedPeopleApi.md#get_politically_exposed_people) | **GET** /politically_exposed_people | Listing Politically Exposed People
[**get_politically_exposed_person**](PoliticallyExposedPeopleApi.md#get_politically_exposed_person) | **GET** /politically_exposed_people/{PoliticallyExposedPerson ID} | Fetching a politically exposed person
[**patch_politically_exposed_person**](PoliticallyExposedPeopleApi.md#patch_politically_exposed_person) | **PATCH** /politically_exposed_people/{PoliticallyExposedPerson ID} | Updating a politically exposed person
[**post_politically_exposed_people**](PoliticallyExposedPeopleApi.md#post_politically_exposed_people) | **POST** /politically_exposed_people | Creating a politically exposed person


# **delete_politically_exposed_person**
> delete_politically_exposed_person(politically_exposed_person_id)

Deleting a politically exposed person

Deletes a single politically exposed person given the PEP ID.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PoliticallyExposedPeopleApi.new


begin
  #Deleting a politically exposed person
  api_instance.delete_politically_exposed_person(politically_exposed_person_id)
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("")
    p result
  else
    puts "Exception when calling PoliticallyExposedPeopleApi->delete_politically_exposed_person: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **politically_exposed_person_id** | **Integer**| The ID of the Politically Exposed Person you want to delete.  Example: &#x60;/v1/politically_exposed_people/1&#x60; | 

### Return type

nil (empty response body)

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
 - **Accept**: Not defined



# **get_politically_exposed_people**
> PoliticallyExposedPersonListResponse get_politically_exposed_people(opts)

Listing Politically Exposed People

Get a list of politically exposed people

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PoliticallyExposedPeopleApi.new

opts = { 
  sender_id: 'sender_id_example' # String | The ID of the Sender to whom the politically exposed people are attached to.  Example: `/v1/politically_exposed_people?sender_id=344fb668-196d-43db-9d94-b34b7e6c7e0b`
}

begin
  #Listing Politically Exposed People
  result = api_instance.get_politically_exposed_people(opts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PoliticallyExposedPersonListResponse")
    p result
  else
    puts "Exception when calling PoliticallyExposedPeopleApi->get_politically_exposed_people: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender_id** | [**String**](.md)| The ID of the Sender to whom the politically exposed people are attached to.  Example: &#x60;/v1/politically_exposed_people?sender_id&#x3D;344fb668-196d-43db-9d94-b34b7e6c7e0b&#x60; | [optional] 

### Return type

[**PoliticallyExposedPersonListResponse**](PoliticallyExposedPersonListResponse.md)

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



# **get_politically_exposed_person**
> PoliticallyExposedPersonResponse get_politically_exposed_person(politically_exposed_person_idopts)

Fetching a politically exposed person

Returns a single politically exposed person given the PEP ID. Can optionally be filtered using the sender_id query parameter.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PoliticallyExposedPeopleApi.new

opts = { 
  sender_id: 'sender_id_example' # String | The ID of the Sender to whom the politically exposed person is attached to.
}

begin
  #Fetching a politically exposed person
  result = api_instance.get_politically_exposed_person(politically_exposed_person_idopts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PoliticallyExposedPersonResponse")
    p result
  else
    puts "Exception when calling PoliticallyExposedPeopleApi->get_politically_exposed_person: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **politically_exposed_person_id** | **Integer**| The ID of the Politically Exposed Person you want to retrieve.  Example: &#x60;/v1/politically_exposed_people/1?sender_id&#x3D;344fb668-196d-43db-9d94-b34b7e6c7e0b&#x60; | 
 **sender_id** | [**String**](.md)| The ID of the Sender to whom the politically exposed person is attached to. | [optional] 

### Return type

[**PoliticallyExposedPersonResponse**](PoliticallyExposedPersonResponse.md)

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



# **patch_politically_exposed_person**
> PoliticallyExposedPersonResponse patch_politically_exposed_person(politically_exposed_person_idpolitically_exposed_person)

Updating a politically exposed person

Updates a single politically exposed person given the PEP ID.

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PoliticallyExposedPeopleApi.new


begin
  #Updating a politically exposed person
  result = api_instance.patch_politically_exposed_person(politically_exposed_person_idpolitically_exposed_person)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PoliticallyExposedPersonResponse")
    p result
  else
    puts "Exception when calling PoliticallyExposedPeopleApi->patch_politically_exposed_person: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **politically_exposed_person_id** | **Integer**| The ID of the Politically Exposed Person you want to update.  Example: &#x60;/v1/politically_exposed_people/1&#x60; | 
 **politically_exposed_person** | [**PoliticallyExposedPerson**](PoliticallyExposedPerson.md)|  | 

### Return type

[**PoliticallyExposedPersonResponse**](PoliticallyExposedPersonResponse.md)

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



# **post_politically_exposed_people**
> PoliticallyExposedPersonResponse post_politically_exposed_people(politically_exposed_person)

Creating a politically exposed person

Creates a new politically exposed person in our system. 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::PoliticallyExposedPeopleApi.new


begin
  #Creating a politically exposed person
  result = api_instance.post_politically_exposed_people(politically_exposed_person)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("PoliticallyExposedPersonResponse")
    p result
  else
    puts "Exception when calling PoliticallyExposedPeopleApi->post_politically_exposed_people: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **politically_exposed_person** | [**PoliticallyExposedPerson**](PoliticallyExposedPerson.md)|  | 

### Return type

[**PoliticallyExposedPersonResponse**](PoliticallyExposedPersonResponse.md)

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



