# TransferZero::PayoutMethodDetailsEGPBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**middle_name** | **String** |  | [optional] 
**last_name** | **String** |  | 
**street** | **String** |  | 
**phone_number** | **String** |  | 
**bank_account** | **String** |  | 
**bank_code** | **String** |  | 
**transfer_reason** | [**PayoutMethodTransferReasonEnum**](PayoutMethodTransferReasonEnum.md) |  | 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsEGPBank.new(first_name: null,
                                 middle_name: null,
                                 last_name: null,
                                 street: null,
                                 phone_number: null,
                                 bank_account: null,
                                 bank_code: null,
                                 transfer_reason: null)
```


