# TransferZero::PaymentMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Details currency and type of payment. | [optional] 
**provider** | **String** | Identifies the payment provider. | [optional] 
**otc_permitted** | **Boolean** | Are over the counter transactions permitted? | [optional] 
**details** | **Array&lt;String&gt;** | Fields required to make the payment depending on type. | [optional] 
**default** | **Boolean** | Boolean revealing whether this is the default payout method. Only present on payout methods | [optional] 
**fields** | [**Hash&lt;String, FieldDescription&gt;**](FieldDescription.md) | The fields needed for payments with this payment method with details on validation requirements | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PaymentMethod.new(type: NGN::Bank,
                                 provider: Interswitch,
                                 otc_permitted: null,
                                 details: [&quot;email&quot;,&quot;first_name&quot;,&quot;last_name&quot;,&quot;address&quot;],
                                 default: null,
                                 fields: {&quot;email&quot;:{&quot;type&quot;:&quot;input&quot;,&quot;validations&quot;:{&quot;inclusion&quot;:{&quot;in&quot;:{&quot;NI&quot;:&quot;National Id&quot;,&quot;PP&quot;:&quot;Passport&quot;},&quot;allow_blank&quot;:true}}}})
```


