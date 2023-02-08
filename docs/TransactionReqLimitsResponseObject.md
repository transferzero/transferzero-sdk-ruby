# TransferZero::TransactionReqLimitsResponseObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**minimum** | **Integer** | The minimum limit for transaction requests (in USD) | [optional] 
**maximum** | **Integer** | The maximum limit for transaction requests (in USD) | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::TransactionReqLimitsResponseObject.new(minimum: 2000,
                                 maximum: 1500000)
```


