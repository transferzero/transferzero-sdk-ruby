# TransferZero::PayoutMethodDetailsKESBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**bank_code** | **String** |  | 
**street** | **String** |  | 
**bank_account** | **String** |  | 
**bank_name** | **String** |  | 
**branch_code** | **String** |  | [optional] 
**swift_code** | **String** |  | 
**transfer_reason_code** | **String** |  | 
**identity_card_type** | [**PayoutMethodIdentityCardTypeEnum**](PayoutMethodIdentityCardTypeEnum.md) |  | 
**identity_card_id** | **String** |  | 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsKESBank.new(first_name: null,
                                 last_name: null,
                                 bank_code: null,
                                 street: null,
                                 bank_account: null,
                                 bank_name: null,
                                 branch_code: null,
                                 swift_code: null,
                                 transfer_reason_code: null,
                                 identity_card_type: null,
                                 identity_card_id: null)
```


