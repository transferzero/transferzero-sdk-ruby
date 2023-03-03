# TransferZero::PayoutMethodDetailsUSDBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**phone_number** | **String** |  | [optional] 
**bank_code** | **String** |  | [optional] 
**bank_account** | **String** |  | 
**bank_account_type** | [**PayoutMethodBankAccountTypeEnum**](PayoutMethodBankAccountTypeEnum.md) |  | [optional] 
**bank_name** | **String** |  | [optional] 
**routing_number** | **String** |  | [optional] 
**swift_code** | **String** |  | [optional] 
**country** | [**PayoutMethodCountryEnum**](PayoutMethodCountryEnum.md) |  | 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsUSDBank.new(first_name: null,
                                 last_name: null,
                                 phone_number: null,
                                 bank_code: null,
                                 bank_account: null,
                                 bank_account_type: null,
                                 bank_name: null,
                                 routing_number: null,
                                 swift_code: null,
                                 country: null)
```


