# TransferZero::TransactionTraits

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_refund** | **Boolean** | Enables or disables the auto refund functionality. Please see [Auto cancellation and refund of transactions](https://docs.transferzero.com/docs/additional-features/#auto-cancellation-and-refund-of-transactions) for more details | [optional] 
**account_validation** | **Boolean** | Enabled or disables the name validation functionality. Please see [Name validation in transactions](https://docs.transferzero.com/docs/additional-features/#name-validation-in-transactions) for more details | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::TransactionTraits.new(auto_refund: null,
                                 account_validation: null)
```


