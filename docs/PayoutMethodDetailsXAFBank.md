# TransferZero::PayoutMethodDetailsXAFBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**iban** | **String** |  | 
**bank_account** | **String** |  | [optional] 
**bank_name** | **String** |  | [optional] 
**bank_country** | **String** |  | [optional] 
**bank_code** | **String** |  | [optional] 
**sort_code** | **String** |  | [optional] 
**transfer_reason** | [**PayoutMethodTransferReasonEnum**](PayoutMethodTransferReasonEnum.md) |  | [optional] 
**birth_date** | **Date** | Date of birth of recipient | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsXAFBank.new(first_name: null,
                                 last_name: null,
                                 iban: null,
                                 bank_account: null,
                                 bank_name: null,
                                 bank_country: null,
                                 bank_code: null,
                                 sort_code: null,
                                 transfer_reason: null,
                                 birth_date: null)
```


