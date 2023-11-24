# TransferZero::PayoutMethodDetailsZARBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**street** | **String** |  | [optional] 
**postal_code** | **String** |  | [optional] 
**city** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**bank_code** | **String** |  | [optional] 
**branch_code** | **String** |  | [optional] 
**bank_account** | **String** |  | 
**phone_number** | **String** |  | 
**transfer_reason_code** | **String** |  | [optional] 
**transfer_reason** | [**PayoutMethodTransferReasonEnum**](PayoutMethodTransferReasonEnum.md) |  | [optional] 
**narration** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**contact_first_name** | **String** |  | [optional] 
**contact_last_name** | **String** |  | [optional] 
**registration_number** | **String** |  | [optional] 
**nature_of_business** | [**PayoutMethodNatureOfBusinessEnum**](PayoutMethodNatureOfBusinessEnum.md) |  | [optional] 
**legal_entity_type** | [**PayoutMethodLegalEntityTypeEnum**](PayoutMethodLegalEntityTypeEnum.md) |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsZARBank.new(first_name: null,
                                 last_name: null,
                                 street: null,
                                 postal_code: null,
                                 city: null,
                                 email: null,
                                 bank_code: null,
                                 branch_code: null,
                                 bank_account: null,
                                 phone_number: null,
                                 transfer_reason_code: null,
                                 transfer_reason: null,
                                 narration: null,
                                 name: null,
                                 contact_first_name: null,
                                 contact_last_name: null,
                                 registration_number: null,
                                 nature_of_business: null,
                                 legal_entity_type: null)
```


