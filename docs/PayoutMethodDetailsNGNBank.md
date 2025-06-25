# TransferZero::PayoutMethodDetailsNGNBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**bank_code** | **String** |  | 
**bank_account** | **String** |  | 
**bank_account_type** | [**PayoutMethodBankAccountTypeEnum**](PayoutMethodBankAccountTypeEnum.md) |  | [optional] 
**birth_date** | **Date** | Date of birth of recipient | [optional] 
**street** | **String** |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsNGNBank.new(first_name: null,
                                 last_name: null,
                                 bank_code: null,
                                 bank_account: null,
                                 bank_account_type: null,
                                 birth_date: null,
                                 street: null)
```


