# TransferZero::Account

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | The account balance for the given currency | [optional] 
**currency** | **String** | The currency of this balance | [optional] 
**amount_after_pending** | **Float** | Represents the account balance after deducting pending transactions from the last 7 days. It provides a more accurate depiction of available funds. | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Account.new(amount: 1000.0,
                                 currency: USD,
                                 amount_after_pending: 1000.0)
```


