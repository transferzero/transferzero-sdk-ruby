# TransferZero::Account

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | The account balance for the given currency | [optional] 
**currency** | **String** | The currency of this balance | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Account.new(amount: 1000.0,
                                 currency: USD)
```


