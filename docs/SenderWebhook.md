# TransferZero::SenderWebhook

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webhook** | **String** | The ID of the webhook that was used to send out this callback | 
**event** | **String** | The event that triggered this webhook | 
**object** | [**Sender**](Sender.md) |  | 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::SenderWebhook.new(webhook: b2f574ff-7efe-4579-9f16-fcb9097e5ab6,
                                 event: transaction.paid,
                                 object: null)
```


