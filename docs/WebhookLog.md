# TransferZero::WebhookLog

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the webhook log | [optional] 
**message** | **String** | Message detailing webhook event | [optional] 
**metadata** | [**WebhookLogMetadata**](WebhookLogMetadata.md) |  | [optional] 
**created_at** | **String** | Date and time of response | [optional] 
**parent_id** | **String** |  | [optional] 
**parent_type** | **String** |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::WebhookLog.new(id: a0696374-de2f-4b4e-a2d7-cb4e0a1240c0,
                                 message: Transaction(a0696374-de2f-4b4e-a2d7-cb4e0a1240c0) transaction.mispaid pending!,
                                 metadata: null,
                                 created_at: 2018-12-31T23:59:50.059+0000,
                                 parent_id: a0696374-de2f-4b4e-a2d7-cb4e0a1240c0,
                                 parent_type: Webhook)
```


