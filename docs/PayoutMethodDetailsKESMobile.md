# TransferZero::PayoutMethodDetailsKESMobile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**street** | **String** |  | 
**phone_number** | **String** |  | 
**mobile_provider** | [**PayoutMethodMobileProviderEnum**](PayoutMethodMobileProviderEnum.md) |  | 
**transfer_reason_code** | **String** |  | 
**identity_card_type** | [**PayoutMethodIdentityCardTypeEnum**](PayoutMethodIdentityCardTypeEnum.md) |  | 
**identity_card_id** | **String** |  | 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsKESMobile.new(first_name: null,
                                 last_name: null,
                                 street: null,
                                 phone_number: null,
                                 mobile_provider: null,
                                 transfer_reason_code: null,
                                 identity_card_type: null,
                                 identity_card_id: null)
```

