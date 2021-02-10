# TransferZero::PayoutMethodDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**bank_code** | **String** |  | 
**bank_account** | **String** |  | 
**bank_account_type** | [**PayoutMethodBankAccountTypeEnum**](PayoutMethodBankAccountTypeEnum.md) |  | [optional] 
**phone_number** | **String** |  | 
**mobile_provider** | [**PayoutMethodMobileProviderEnum**](PayoutMethodMobileProviderEnum.md) |  | 
**iban** | **String** |  | 
**bank_name** | **String** |  | 
**bank_country** | **String** |  | 
**cash_provider** | [**PayoutMethodCashProviderEnum**](PayoutMethodCashProviderEnum.md) |  | [optional] 
**sort_code** | **String** |  | [optional] 
**bic** | **String** |  | [optional] 
**sender_identity_card_type** | [**PayoutMethodIdentityCardTypeEnum**](PayoutMethodIdentityCardTypeEnum.md) |  | 
**sender_identity_card_id** | **String** |  | 
**sender_city_of_birth** | **String** |  | 
**sender_country_of_birth** | **String** |  | 
**sender_gender** | [**PayoutMethodGenderEnum**](PayoutMethodGenderEnum.md) |  | 
**reason** | **String** |  | [optional] 
**identity_card_type** | [**PayoutMethodIdentityCardTypeEnum**](PayoutMethodIdentityCardTypeEnum.md) |  | [optional] 
**identity_card_id** | **String** |  | [optional] 
**reference** | **String** |  | [optional] 
**name** | **String** |  | 
**address** | **String** |  | 
**street** | **String** |  | 
**postal_code** | **String** |  | 
**city** | **String** |  | 
**email** | **String** |  | [optional] 
**transfer_reason_code** | **String** |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetails.new(first_name: null,
                                 last_name: null,
                                 bank_code: null,
                                 bank_account: null,
                                 bank_account_type: null,
                                 phone_number: null,
                                 mobile_provider: null,
                                 iban: null,
                                 bank_name: null,
                                 bank_country: null,
                                 cash_provider: null,
                                 sort_code: null,
                                 bic: null,
                                 sender_identity_card_type: null,
                                 sender_identity_card_id: null,
                                 sender_city_of_birth: null,
                                 sender_country_of_birth: null,
                                 sender_gender: null,
                                 reason: null,
                                 identity_card_type: null,
                                 identity_card_id: null,
                                 reference: null,
                                 name: null,
                                 address: null,
                                 street: null,
                                 postal_code: null,
                                 city: null,
                                 email: null,
                                 transfer_reason_code: null)
```


