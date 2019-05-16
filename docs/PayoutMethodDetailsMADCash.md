# TransferZero::PayoutMethodDetailsMADCash

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**phone_number** | **String** |  | 
**sender_identity_card_type** | [**PayoutMethodIdentityCardTypeEnum**](PayoutMethodIdentityCardTypeEnum.md) |  | 
**sender_identity_card_id** | **String** |  | 
**sender_city_of_birth** | **String** |  | 
**sender_country_of_birth** | **String** |  | 
**sender_gender** | [**PayoutMethodGenderEnum**](PayoutMethodGenderEnum.md) |  | 
**reason** | **String** |  | [optional] 
**identity_card_type** | [**PayoutMethodIdentityCardTypeEnum**](PayoutMethodIdentityCardTypeEnum.md) |  | [optional] 
**identity_card_id** | **String** |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsMADCash.new(first_name: null,
                                 last_name: null,
                                 phone_number: null,
                                 sender_identity_card_type: null,
                                 sender_identity_card_id: null,
                                 sender_city_of_birth: null,
                                 sender_country_of_birth: null,
                                 sender_gender: null,
                                 reason: null,
                                 identity_card_type: null,
                                 identity_card_id: null)
```


