# TransferZero::PayoutMethodDetailsUSDBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**middle_name** | **String** |  | [optional] 
**last_name** | **String** |  | 
**phone_number** | **String** |  | [optional] 
**bank_code** | **String** |  | [optional] 
**bank_account** | **String** |  | [optional] 
**bank_account_type** | [**PayoutMethodBankAccountTypeEnum**](PayoutMethodBankAccountTypeEnum.md) |  | [optional] 
**bank_name** | **String** |  | [optional] 
**routing_number** | **String** |  | [optional] 
**swift_code** | **String** |  | [optional] 
**iban** | **String** |  | [optional] 
**street** | **String** |  | [optional] 
**transfer_reason** | [**PayoutMethodTransferReasonEnum**](PayoutMethodTransferReasonEnum.md) |  | [optional] 
**country** | [**PayoutMethodCountryEnum**](PayoutMethodCountryEnum.md) |  | 
**birth_date** | **Date** | Date of birth of recipient | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsUSDBank.new(first_name: null,
                                 middle_name: null,
                                 last_name: null,
                                 phone_number: null,
                                 bank_code: null,
                                 bank_account: null,
                                 bank_account_type: null,
                                 bank_name: null,
                                 routing_number: null,
                                 swift_code: null,
                                 iban: null,
                                 street: null,
                                 transfer_reason: null,
                                 country: null,
                                 birth_date: null)
```


