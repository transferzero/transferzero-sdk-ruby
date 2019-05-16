# TransferZero::Transaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**input_currency** | **String** | The input currency describes what currency the transaction will be paid in (3-character alpha ISO 4217 currency format). For example if you wish to create an EUR to NGN transaction then input currency should be set to EUR. | 
**payin_methods** | [**Array&lt;PayinMethod&gt;**](PayinMethod.md) | Allows setting alternative collections, where funding the transaction is done through alternative means and not via account balance.  For more information please see [Collections from senders](https://github.com/transferzero/api-documentation/blob/master/additional-features.md#collections-from-senders) in the API documentation | [optional] 
**metadata** | [**Object**](.md) | Additional metadata to store on the transaction. If you widh to store your local transaction ID, you should add it here inside a &#x60;sendRef&#x60; field, and we will return this value back to you in the daily transaction reports. | [optional] 
**sender** | [**Sender**](Sender.md) |  | 
**recipients** | [**Array&lt;Recipient&gt;**](Recipient.md) | The details of where the payment should go. although transactions can support paying out multiple recipients, usually one is provided.  | 
**traits** | [**TransactionTraits**](TransactionTraits.md) |  | [optional] 
**state** | [**TransactionState**](TransactionState.md) |  | [optional] 
**input_amount** | **Float** | The amount that was requested in the input currency | [optional] 
**payin_reference** | **String** | The reference number that has to be provided in case the transaction is not funded through account balance | [optional] 
**paid_amount** | **Float** | The amount that was already paid in to the transaction | [optional] 
**due_amount** | **Float** | The amount needed to be paid in for the transaction to get funded | [optional] 
**created_at** | **DateTime** | The time the transaction was created | [optional] 
**expires_at** | **DateTime** | The latest time when the transaction has to be funded, otherwise it will be cancelled | [optional] 
**external_id** | **String** | Optional ID that is supplied by partner linking it to the partner&#39;s own Sender ID. Note: if present we will validate whether the sent ID is a duplicate in our system or not. | [optional] 
**id** | **String** |  | [optional] 
**errors** | **Hash&lt;String, Array&lt;ValidationErrorDescription&gt;&gt;** | The fields that have some problems and don&#39;t pass validation | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Transaction.new(input_currency: NGN,
                                 payin_methods: null,
                                 metadata: {&quot;sendRef&quot;:&quot;MONEY-TRANSFER-12543&quot;},
                                 sender: null,
                                 recipients: null,
                                 traits: null,
                                 state: null,
                                 input_amount: null,
                                 payin_reference: null,
                                 paid_amount: null,
                                 due_amount: null,
                                 created_at: null,
                                 expires_at: null,
                                 external_id: 806ec63a-a5a7-43cc-9d75-1ee74fbcc026,
                                 id: null,
                                 errors: {&quot;phone_number&quot;:[{&quot;error&quot;:&quot;invalid&quot;}],&quot;documents&quot;:[{&quot;error&quot;:&quot;blank&quot;}]})
```


