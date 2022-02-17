# TransferZero::PayinMethodDetailsNGNBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | **String** | The payment method which the sender will use to make the payments. Options are &#x60;bank&#x60;, &#x60;card&#x60; or you can leave empty to support both. | [optional] 
**redirect_url** | **String** | This is where the sender should be redirected back when the payment has been finished | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayinMethodDetailsNGNBank.new(payment_method: null,
                                 redirect_url: null)
```


