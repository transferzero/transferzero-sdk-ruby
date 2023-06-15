# TransferZero::PayoutMethodDetailsKESBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**street** | **String** |  | 
**city** | **String** |  | [optional] 
**bank_code** | **String** |  | 
**bank_account** | **String** |  | 
**transfer_reason** | [**PayoutMethodTransferReasonEnum**](PayoutMethodTransferReasonEnum.md) |  | 
**identity_card_type** | [**PayoutMethodIdentityCardTypeEnum**](PayoutMethodIdentityCardTypeEnum.md) |  | 
**identity_card_id** | **String** |  | 
**relationship_to_sender** | **String** |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsKESBank.new(first_name: null,
                                 last_name: null,
                                 street: null,
                                 city: null,
                                 bank_code: null,
                                 bank_account: null,
                                 transfer_reason: null,
                                 identity_card_type: null,
                                 identity_card_id: null,
                                 relationship_to_sender: null)
```


