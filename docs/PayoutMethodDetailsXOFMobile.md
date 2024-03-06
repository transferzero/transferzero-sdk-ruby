# TransferZero::PayoutMethodDetailsXOFMobile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**phone_number** | **String** |  | 
**mobile_provider** | [**PayoutMethodMobileProviderEnum**](PayoutMethodMobileProviderEnum.md) |  | 
**country** | [**PayoutMethodCountryEnum**](PayoutMethodCountryEnum.md) |  | [optional] 
**transfer_reason** | [**PayoutMethodTransferReasonEnum**](PayoutMethodTransferReasonEnum.md) |  | [optional] 
**birth_date** | **Date** | Date of birth of recipient | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsXOFMobile.new(first_name: null,
                                 last_name: null,
                                 phone_number: null,
                                 mobile_provider: null,
                                 country: null,
                                 transfer_reason: null,
                                 birth_date: null)
```


