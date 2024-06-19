# TransferZero::PayinMethodDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone_number** | **String** | The phone number where the funds should be collected from | [optional] 
**mobile_provider** | [**PayoutMethodMobileProviderEnum**](PayoutMethodMobileProviderEnum.md) |  | [optional] 
**country** | [**PayoutMethodCountryEnum**](PayoutMethodCountryEnum.md) |  | [optional] 
**otp** | **String** | The OTP that the sender received in otp verified ussd popup ux flow. | [optional] 
**refund_address** | **String** | Please make sure the refund_address is a valid BTC address belonging to the sender, as that is going to be used in case the transaction has to be refunded. | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayinMethodDetails.new(phone_number: +256129999999,
                                 mobile_provider: null,
                                 country: null,
                                 otp: null,
                                 refund_address: null)
```


