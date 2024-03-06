# TransferZero::PayoutMethodDetailsXOFCash

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**phone_number** | **String** |  | 
**cash_provider** | [**PayoutMethodCashProviderEnum**](PayoutMethodCashProviderEnum.md) |  | 
**country** | [**PayoutMethodCountryEnum**](PayoutMethodCountryEnum.md) |  | [optional] 
**birth_date** | **Date** | Date of birth of recipient | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsXOFCash.new(first_name: null,
                                 last_name: null,
                                 phone_number: null,
                                 cash_provider: null,
                                 country: null,
                                 birth_date: null)
```


