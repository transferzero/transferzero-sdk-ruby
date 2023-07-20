# TransferZero::PayoutMethodDetailsBRLBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**city** | **String** |  | 
**postal_code** | **String** |  | 
**phone_number** | **String** |  | [optional] 
**bank_code** | **String** |  | [optional] 
**branch_code** | **String** |  | [optional] 
**bank_account** | **String** |  | [optional] 
**bank_account_type** | [**PayoutMethodBankAccountTypeEnum**](PayoutMethodBankAccountTypeEnum.md) |  | [optional] 
**pix_key_type** | [**PayoutMethodPixKeyTypeEnum**](PayoutMethodPixKeyTypeEnum.md) |  | [optional] 
**pix_key_value** | **String** |  | [optional] 
**identity_card_id** | **String** |  | 
**transfer_reason** | [**PayoutMethodTransferReasonEnum**](PayoutMethodTransferReasonEnum.md) |  | 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsBRLBank.new(first_name: null,
                                 last_name: null,
                                 city: null,
                                 postal_code: null,
                                 phone_number: null,
                                 bank_code: null,
                                 branch_code: null,
                                 bank_account: null,
                                 bank_account_type: null,
                                 pix_key_type: null,
                                 pix_key_value: null,
                                 identity_card_id: null,
                                 transfer_reason: null)
```


