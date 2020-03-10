# TransferZero::PayinMethodDetailsBTC

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**refund_address** | **String** | Please make sure the refund_address is a valid BTC address belonging to the sender, as that is going to be used in case the transaction has to be refunded. | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayinMethodDetailsBTC.new(refund_address: null)
```


