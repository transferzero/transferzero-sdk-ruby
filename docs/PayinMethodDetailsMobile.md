# TransferZero::PayinMethodDetailsMobile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone_number** | **String** | The phone number where the funds should be collected from | [optional] 
**mobile_provider** | [**PayoutMethodMobileProviderEnum**](PayoutMethodMobileProviderEnum.md) |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayinMethodDetailsMobile.new(phone_number: +2569999999,
                                 mobile_provider: null)
```


