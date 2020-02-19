# TransferZero::PayinMethodDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **String** | The payment method which the user will use to make the payments. Options are &#x60;bank&#x60;, &#x60;card&#x60; or you can leave empty to support both. | [optional] 
**redirect_url** | **String** | This is where the user should be redirected back when the payment has been finished | [optional] 
**phone_number** | **String** | The phone number where the funds should be collected from | 
**send_instructions** | **Boolean** | States whether to send out the instructions to the phone number on how to pay the funds or not. This shuold always be set to true, otherwise the sender might not receive a prompt for payment. | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayinMethodDetails.new(payment_method: null,
                                 redirect_url: null,
                                 phone_number: +2569999999,
                                 send_instructions: null)
```


