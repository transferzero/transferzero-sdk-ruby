# TransferZero::PayoutMethodDetailsXOFCash

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**identity_card_id** | **String** |  | [optional] 
**identity_card_type** | [**PayoutMethodIdentityCardTypeEnum**](PayoutMethodIdentityCardTypeEnum.md) |  | [optional] 
**phone_number** | **String** |  | 
**cash_provider** | [**PayoutMethodCashProviderEnum**](PayoutMethodCashProviderEnum.md) |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsXOFCash.new(first_name: null,
                                 last_name: null,
                                 identity_card_id: null,
                                 identity_card_type: null,
                                 phone_number: null,
                                 cash_provider: null)
```


