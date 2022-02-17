# TransferZero::StateReasonDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Status code of transaction | [optional] 
**category** | **String** | Main category of status code, it could be paid, unknown, pickupable, temporary_error, recipient_error, sender_error, sender_action_required | [optional] 
**messages** | **Array&lt;String&gt;** | Tiered messages | [optional] 
**description** | **String** | Public, human readable, detailed error message | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::StateReasonDetails.new(code: 311,
                                 category: temporary_error,
                                 messages: [&quot;Temporary error&quot;,&quot;Switch Error&quot;,&quot;Issuer/Switch inoperative&quot;],
                                 description: The central switch is not accepting transactions at the moment. We will retry the transaction)
```


