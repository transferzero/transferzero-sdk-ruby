# TransferZero::PayinMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Describes how the payment should be requested from the sender.  Possible values: - &#x60;GHS::Mobile&#x60;: GHS mobile collections - &#x60;UGX::Mobile&#x60;: UGX mobile collections - &#x60;EUR::Bank&#x60;: EUR IBAN collections - &#x60;GBP::Bank&#x60;: GBP IBAN collections  | [optional] 
**ux_flow** | [**PayinMethodUxFlow**](PayinMethodUxFlow.md) |  | [optional] 
**in_details** | [**PayinMethodDetails**](PayinMethodDetails.md) |  | [optional] 
**id** | **String** |  | [optional] 
**state** | [**PayinMethodState**](PayinMethodState.md) |  | [optional] 
**state_reason_details** | [**StateReasonDetails**](StateReasonDetails.md) |  | [optional] 
**out_details** | [**Object**](.md) | This will contain the description on where to pay the funds. Please see the [Collections Details](https://docs.transferzero.com/docs/collection-details) in the API documentation on what to expect here. | [optional] 
**instructions** | [**Object**](.md) | This will contain the instructions on how to pay the funds. Please see the [Collections Details](https://docs.transferzero.com/docs/collection-details) in the API documentation on what to expect here. | [optional] 
**errors** | **Hash&lt;String, Array&lt;ValidationErrorDescription&gt;&gt;** | The fields that have some problems and don&#39;t pass validation | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayinMethod.new(type: GHS::Mobile,
                                 ux_flow: null,
                                 in_details: null,
                                 id: 97e79719-06e4-4794-aeeb-d2d9415d983a,
                                 state: null,
                                 state_reason_details: null,
                                 out_details: null,
                                 instructions: null,
                                 errors: {&quot;phone_number&quot;:[{&quot;error&quot;:&quot;invalid&quot;}],&quot;documents&quot;:[{&quot;error&quot;:&quot;blank&quot;}]})
```


