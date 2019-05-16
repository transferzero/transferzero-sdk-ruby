# TransferZero::Recipient

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requested_amount** | **Float** | the amount that should be paid to the recipient. This can be in any currency, usually either the input or the output currency. If the value here is not the output currency we will calculate how much the recipient is going to get using the exchange rates active when the transaction was created. | 
**requested_currency** | **String** | the currency of the amount in 3-character alpha ISO 4217 currency format | 
**payout_method** | [**PayoutMethod**](PayoutMethod.md) |  | 
**metadata** | [**Object**](.md) | Additional metadata that can be added to a recipient. These values will be returned on request | [optional] 
**created_at** | **DateTime** | Date and time that the recipient was created. | [optional] 
**editable** | **Boolean** | Shows whether the recipient can be edited using the PATCH /v1/recipients/{id} endpoint or not | [optional] 
**input_usd_amount** | **Float** | Shows how much this payment is worth in USD | [optional] 
**may_cancel** | **Boolean** | Shows whether the payment can be cancelled using the DELETE /v1/recipients/{id} endpoint or not. The payment can not be cancelled if the payout is pending. | [optional] 
**state_reason** | **String** | In case the payment is unsuccessful it holds the error message associated with the last unsuccessful payout. | [optional] 
**state** | [**RecipientState**](RecipientState.md) |  | [optional] 
**transaction_id** | **String** | The ID of the transaction that is related to this recipient | [optional] 
**transaction_state** | [**TransactionState**](TransactionState.md) |  | [optional] 
**exchange_rate** | **Float** | The exchange rate used in this payment | [optional] 
**fee_fractional** | **Float** | The fee for this payment in fractional units (for example cents for USD transactions) | [optional] 
**input_amount** | **Float** | The amount that had to be paid in for this payment to proceed | [optional] 
**input_currency** | **String** | The currency this payment was paid in | [optional] 
**output_amount** | **Float** | The amount that will be paid to the recipient | [optional] 
**output_currency** | **String** | The currency the payment will be delivered in | [optional] 
**id** | **String** |  | [optional] 
**errors** | **Hash&lt;String, Array&lt;ValidationErrorDescription&gt;&gt;** | The fields that have some problems and don&#39;t pass validation | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Recipient.new(requested_amount: 750.0,
                                 requested_currency: NGN,
                                 payout_method: null,
                                 metadata: {},
                                 created_at: null,
                                 editable: null,
                                 input_usd_amount: 10,
                                 may_cancel: null,
                                 state_reason: null,
                                 state: null,
                                 transaction_id: 97e79719-06e4-4794-aeeb-d2d9415d983a,
                                 transaction_state: null,
                                 exchange_rate: 1000,
                                 fee_fractional: 100,
                                 input_amount: 10,
                                 input_currency: USD,
                                 output_amount: 10000,
                                 output_currency: NGN,
                                 id: 97e79719-06e4-4794-aeeb-d2d9415d983a,
                                 errors: {&quot;phone_number&quot;:[{&quot;error&quot;:&quot;invalid&quot;}],&quot;documents&quot;:[{&quot;error&quot;:&quot;blank&quot;}]})
```


