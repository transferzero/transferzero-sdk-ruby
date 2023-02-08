# TransferZero::EntitiesApi

All URIs are relative to *https://api-sandbox.bitpesa.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_entities**](EntitiesApi.md#get_entities) | **GET** /risk_assessment/entities/{Entity Type}/summary | Listing entities
[**get_entities_by_params**](EntitiesApi.md#get_entities_by_params) | **GET** /risk_assessment/entities/{Entity Type}/search | Listing entities by params (rating and/or state)
[**get_entity**](EntitiesApi.md#get_entity) | **GET** /risk_assessment/entities/{Entity Type}/{Entity ID} | Fetching a entity
[**patch_entity**](EntitiesApi.md#patch_entity) | **PATCH** /risk_assessment/entities/{Entity Type}/{Entity ID} | Updating an entity
[**post_entity**](EntitiesApi.md#post_entity) | **POST** /risk_assessment/entities/{Entity Type}/{Entity ID} | Creating an entity


# **get_entities**
> EntityListResponse get_entities(entity_typeids)

Listing entities

Get a list of entities

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::EntitiesApi.new


begin
  #Listing entities
  result = api_instance.get_entities(entity_typeids)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("EntityListResponse")
    p result
  else
    puts "Exception when calling EntitiesApi->get_entities: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type** | **String**| Type of entities to get.  Example: &#x60;/risk_assessment/entities/sender/summary?ids[]&#x3D;bf9ff782-e182-45ac-abea-5bce83ad6670&amp;ids[]&#x3D;344fb668-196d-43db-9d94-b34b7e6c7e0b&#x60; | 
 **ids** | [**Array&lt;String&gt;**](String.md)| Returns entities of specified entity(e.g Sender) id(s). This allows the fetching of entities for multiple e.g. senders  Example: &#x60;/risk_assessment/entities/sender?ids[]&#x3D;bf9ff782-e182-45ac-abea-5bce83ad6670&amp;ids[]&#x3D;344fb668-196d-43db-9d94-b34b7e6c7e0b&#x60; | 

### Return type

[**EntityListResponse**](EntityListResponse.md)

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



# **get_entities_by_params**
> EntityListResponse get_entities_by_params(entity_typeopts)

Listing entities by params (rating and/or state)

Get a list of entities scoped by the requested params (rating and/or state)

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::EntitiesApi.new

opts = { 
  rating: 'rating_example' # String | Returns a list of entities scoped by the Entity rating (rating param can be one of 'extremely_high', 'high_risk', 'medium_risk' or 'low_risk')  Example: `/risk_assessment/entities/Sender::Business/search?rating=extremely_high`
  state: 'state_example' # String | Returns a list of entities scoped by the Entity state (state param can be one of 'complete' or 'incomplete')  Example: `/risk_assessment/entities/Sender::Business/search?state=complete`
}

begin
  #Listing entities by params (rating and/or state)
  result = api_instance.get_entities_by_params(entity_typeopts)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("EntityListResponse")
    p result
  else
    puts "Exception when calling EntitiesApi->get_entities_by_params: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type** | **String**| Type of entities to retrieve.  Example: &#x60;/risk_assessment/entities/sender/search?rating&#x3D;extremely_high&amp;state&#x3D;complete&#x60; | 
 **rating** | **String**| Returns a list of entities scoped by the Entity rating (rating param can be one of &#39;extremely_high&#39;, &#39;high_risk&#39;, &#39;medium_risk&#39; or &#39;low_risk&#39;)  Example: &#x60;/risk_assessment/entities/Sender::Business/search?rating&#x3D;extremely_high&#x60; | [optional] 
 **state** | **String**| Returns a list of entities scoped by the Entity state (state param can be one of &#39;complete&#39; or &#39;incomplete&#39;)  Example: &#x60;/risk_assessment/entities/Sender::Business/search?state&#x3D;complete&#x60; | [optional] 

### Return type

[**EntityListResponse**](EntityListResponse.md)

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



# **get_entity**
> EntityCreateResponse get_entity(entity_typeentity_id)

Fetching a entity

Returns a single entity by the Entity ID

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::EntitiesApi.new


begin
  #Fetching a entity
  result = api_instance.get_entity(entity_typeentity_id)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("EntityCreateResponse")
    p result
  else
    puts "Exception when calling EntitiesApi->get_entity: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type** | **String**| Type of entities to get.  Example: &#x60;/risk_assessment/entities/sender/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 
 **entity_id** | [**String**](.md)| ID of the entity to get.  Example: &#x60;/risk_assessment/entities/sender/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 

### Return type

[**EntityCreateResponse**](EntityCreateResponse.md)

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



# **patch_entity**
> EntityUpdateResponse patch_entity(entity_typeentity_identity_update_request)

Updating an entity

Updates a single entity by the Entity ID

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::EntitiesApi.new


begin
  #Updating an entity
  result = api_instance.patch_entity(entity_typeentity_identity_update_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("EntityUpdateResponse")
    p result
  else
    puts "Exception when calling EntitiesApi->patch_entity: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type** | **String**| Type of entities to get.  Example: &#x60;/risk_assessment/entities/sender/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 
 **entity_id** | [**String**](.md)| ID of the entity to get.  Example: &#x60;/risk_assessment/entities/sender/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60; | 
 **entity_update_request** | [**EntityUpdateRequest**](EntityUpdateRequest.md)|  | 

### Return type

[**EntityUpdateResponse**](EntityUpdateResponse.md)

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



# **post_entity**
> EntityCreateResponse post_entity(entity_typeentity_identity_create_request)

Creating an entity

Creates a new entity. 

### Example
```ruby
# load the gem
require 'transferzero-sdk'

api_instance = TransferZero::EntitiesApi.new


begin
  #Creating an entity
  result = api_instance.post_entity(entity_typeentity_identity_create_request)
  p result
rescue TransferZero::ApiError => e
  if e.validation_error
    puts "WARN: Validation error occured when calling the endpoint"
    result = e.response_object("EntityCreateResponse")
    p result
  else
    puts "Exception when calling EntitiesApi->post_entity: #{e}"
  end
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type** | **String**| Type of entity to create. | 
 **entity_id** | [**String**](.md)| ID of entity type to create entity for.  Example: &#x60;/risk_assessment/entities/sender/e6f67a67-b2c2-4897-ad58-9fc3a9d8d991&#x60; | 
 **entity_create_request** | [**EntityCreateRequest**](EntityCreateRequest.md)|  | 

### Return type

[**EntityCreateResponse**](EntityCreateResponse.md)

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



