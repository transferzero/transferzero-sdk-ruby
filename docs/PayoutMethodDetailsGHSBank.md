# TransferZero::PayoutMethodDetailsGHSBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**bank_code** | **String** |  | 
**bank_account** | **String** |  | 
**birth_date** | **Date** | Date of birth of recipient | [optional] 
**transfer_reason** | [**PayoutMethodTransferReasonEnum**](PayoutMethodTransferReasonEnum.md) |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsGHSBank.new(first_name: null,
                                 last_name: null,
                                 bank_code: null,
                                 bank_account: null,
                                 birth_date: null,
                                 transfer_reason: null)
```


