# TransferZero::TransactionReq

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**Transaction**](Transaction.md) |  | 
**documents** | [**Array&lt;Document&gt;**](Document.md) | AML documents related to this transaction request. &#x60;&#x60;&#x60;JSON \&quot;documents\&quot;: [   {     \&quot;id\&quot;: \&quot;b6648ba3-1c7b-4f59-8580-684899c84a07\&quot;   } ] &#x60;&#x60;&#x60; | [optional] 
**metadata** | [**Object**](.md) | Metadata of transaction request | [optional] 
**created_at** | **DateTime** | Date and time the transaction request was created | [optional] 
**state** | **String** | State of transaction request | [optional] 
**trade_id** | **Integer** |  | [optional] 
**id** | **String** |  | [optional] 
**result** | [**Transaction**](Transaction.md) |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::TransactionReq.new(content: null,
                                 documents: [{&quot;id&quot;:&quot;b6648ba3-1c7b-4f59-8580-684899c84a07&quot;}],
                                 metadata: null,
                                 created_at: null,
                                 state: paid,
                                 trade_id: null,
                                 id: null,
                                 result: null)
```


