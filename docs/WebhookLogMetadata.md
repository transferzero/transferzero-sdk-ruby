# TransferZero::WebhookLogMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**params** | [**WebhookDefinition**](WebhookDefinition.md) |  | [optional] 
**event** | **String** | Specific event that triggered the webhook | [optional] 
**instance_id** | **String** | Instance ID of the webhook event | [optional] 
**instance_type** | **String** | Type of instance event | [optional] 
**attempt_id** | **String** | Attempt ID | [optional] 
**tries** | **Integer** | Number of tries at the point webhook was triggered | [optional] 
**request** | [**WebhookLogMetadataRequest**](WebhookLogMetadataRequest.md) |  | [optional] 
**response** | [**WebhookLogMetadataResponse**](WebhookLogMetadataResponse.md) |  | [optional] 
**app_id** | **String** | ID of app on which webhook event was triggered | [optional] 
**api_key_id** | **String** | ID of API key in use at point of webhook event | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::WebhookLogMetadata.new(params: null,
                                 event: transaction.mispaid,
                                 instance_id: a0696374-de2f-4b4e-a2d7-cb4e0a1240c0,
                                 instance_type: Transaction,
                                 attempt_id: a0696374-de2f-4b4e-a2d7-cb4e0a1240c0,
                                 tries: 15,
                                 request: null,
                                 response: null,
                                 app_id: a0696374-de2f-4b4e-a2d7-cb4e0a1240c0,
                                 api_key_id: a0696374-de2f-4b4e-a2d7-cb4e0a1240c0)
```


