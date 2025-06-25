# TransferZero::PayoutMethodDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**bank_code** | **String** |  | 
**bank_account** | **String** |  | 
**bank_account_type** | [**PayoutMethodBankAccountTypeEnum**](PayoutMethodBankAccountTypeEnum.md) |  | [optional] 
**birth_date** | **Date** | Date of birth of recipient | [optional] 
**street** | **String** |  | 
**phone_number** | **String** |  | 
**mobile_provider** | [**PayoutMethodMobileProviderEnum**](PayoutMethodMobileProviderEnum.md) |  | 
**country** | [**PayoutMethodCountryEnum**](PayoutMethodCountryEnum.md) |  | 
**transfer_reason** | [**PayoutMethodTransferReasonEnum**](PayoutMethodTransferReasonEnum.md) |  | 
**iban** | **String** |  | 
**bank_name** | **String** |  | 
**bank_country** | **String** |  | [optional] 
**cash_provider** | [**PayoutMethodCashProviderEnum**](PayoutMethodCashProviderEnum.md) |  | 
**sort_code** | **String** |  | [optional] 
**bic** | **String** |  | [optional] 
**narration** | **String** |  | [optional] 
**sender_identity_card_type** | [**PayoutMethodIdentityCardTypeEnum**](PayoutMethodIdentityCardTypeEnum.md) |  | 
**sender_identity_card_id** | **String** |  | 
**sender_city_of_birth** | **String** |  | [optional] 
**sender_country_of_birth** | **String** |  | [optional] 
**sender_gender** | [**PayoutMethodGenderEnum**](PayoutMethodGenderEnum.md) |  | [optional] 
**reason** | **String** |  | [optional] 
**identity_card_type** | [**PayoutMethodIdentityCardTypeEnum**](PayoutMethodIdentityCardTypeEnum.md) |  | 
**identity_card_id** | **String** |  | 
**reference** | **String** |  | [optional] 
**name** | **String** |  | 
**address** | **String** |  | 
**postal_code** | **String** |  | 
**city** | **String** |  | 
**email** | **String** |  | [optional] 
**branch_code** | **String** |  | 
**transfer_reason_code** | **String** |  | [optional] 
**contact_first_name** | **String** |  | [optional] 
**contact_last_name** | **String** |  | [optional] 
**registration_number** | **String** |  | [optional] 
**nature_of_business** | [**PayoutMethodNatureOfBusinessEnum**](PayoutMethodNatureOfBusinessEnum.md) |  | [optional] 
**legal_entity_type** | [**PayoutMethodLegalEntityTypeEnum**](PayoutMethodLegalEntityTypeEnum.md) |  | [optional] 
**middle_name** | **String** |  | 
**routing_number** | **String** |  | [optional] 
**swift_code** | **String** |  | [optional] 
**relationship_to_sender** | **String** |  | [optional] 
**pix_key_type** | [**PayoutMethodPixKeyTypeEnum**](PayoutMethodPixKeyTypeEnum.md) |  | [optional] 
**pix_key_value** | **String** |  | [optional] 
**ifsc_code** | **String** |  | 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetails.new(first_name: null,
                                 last_name: null,
                                 bank_code: null,
                                 bank_account: null,
                                 bank_account_type: null,
                                 birth_date: null,
                                 street: null,
                                 phone_number: null,
                                 mobile_provider: null,
                                 country: null,
                                 transfer_reason: null,
                                 iban: null,
                                 bank_name: null,
                                 bank_country: null,
                                 cash_provider: null,
                                 sort_code: null,
                                 bic: null,
                                 narration: null,
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
                                 postal_code: null,
                                 city: null,
                                 email: null,
                                 branch_code: null,
                                 transfer_reason_code: null,
                                 contact_first_name: null,
                                 contact_last_name: null,
                                 registration_number: null,
                                 nature_of_business: null,
                                 legal_entity_type: null,
                                 middle_name: null,
                                 routing_number: null,
                                 swift_code: null,
                                 relationship_to_sender: null,
                                 pix_key_type: null,
                                 pix_key_value: null,
                                 ifsc_code: null)
```


