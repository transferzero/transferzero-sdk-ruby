# TransferZero::Debit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | The amount to be debited from your account.  The “amount” parameter is optional - - if included, it must equal the amount required to fund the transaction. - if omitted, it will default to the amount required to fund the transaction.  | [optional] 
**currency** | **String** | The currency of the amount in 3-character alpha ISO 4217 currency format | 
**to_type** | **String** | Describes what the debit is funding | 
**to_id** | **String** | The ID of the resource the debit is funding | 
**metadata** | [**Object**](.md) | Metadata of account debit | [optional] 
**id** | **String** |  | [optional] 
**created_at** | **DateTime** | Date and time that the debit was created | [optional] 
**usd_amount** | **Float** | The amount to be debited from your account converted to USD  | [optional] 
**running_balance** | **Float** | The total amount remaining in your account after the debit call  | [optional] 
**errors** | **Hash&lt;String, Array&lt;ValidationErrorDescription&gt;&gt;** | The fields that have some problems and don&#39;t pass validation | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Debit.new(amount: 10000,
                                 currency: NGN,
                                 to_type: Transaction,
                                 to_id: 5f44026b-7904-4c30-87d6-f8972d790ded,
                                 metadata: {},
                                 id: 5f44026b-7904-4c30-87d6-f8972d790ded,
                                 created_at: null,
                                 usd_amount: 200.06211683187206,
                                 running_balance: 2000000,
                                 errors: {&quot;phone_number&quot;:[{&quot;error&quot;:&quot;invalid&quot;}],&quot;documents&quot;:[{&quot;error&quot;:&quot;blank&quot;}]})
```


