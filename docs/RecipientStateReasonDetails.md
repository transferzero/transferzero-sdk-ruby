# TransferZero::RecipientStateReasonDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Status code of failed transaction | [optional] 
**category** | **String** | Main category of error, it could be paid, unknown, pickupable, temporary_error, recipient_error, sender_error | [optional] 
**messages** | **Array&lt;String&gt;** | Tiered messages | [optional] 
**description** | **String** | Public, human readable, detailed error message | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::RecipientStateReasonDetails.new(code: 311,
                                 category: temporary_error,
                                 messages: [&quot;Temporary error&quot;,&quot;Switch Error&quot;,&quot;Issuer/Switch inoperative&quot;],
                                 description: The central switch is not accepting transfers at the moment. We will retry the transaction. You can also edit or cancel this transaction.)
```


