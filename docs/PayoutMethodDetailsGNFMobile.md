# TransferZero::PayoutMethodDetailsGNFMobile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**phone_number** | **String** |  | 
**mobile_provider** | [**PayoutMethodMobileProviderEnum**](PayoutMethodMobileProviderEnum.md) |  | 
**birth_date** | **Date** | Date of birth of recipient | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsGNFMobile.new(first_name: null,
                                 last_name: null,
                                 phone_number: null,
                                 mobile_provider: null,
                                 birth_date: null)
```


