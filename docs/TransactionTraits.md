# TransferZero::TransactionTraits

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_refund** | **Boolean** | Enables or disables the auto refund functionality. Please see [Auto cancellation and refund of transactions](https://github.com/transferzero/api-documentation/blob/master/additional-features.md#auto-cancellation-and-refund-of-transactions) for more details | [optional] 
**account_validation** | **Boolean** | Enabled or disables the name validation functionality. Please see [Name validation in transactions](https://github.com/transferzero/api-documentation/blob/master/additional-features.md#name-validation-in-transactions) for more details | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::TransactionTraits.new(auto_refund: null,
                                 account_validation: null)
```


