# TransferZero::DlocalBalance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **String** | The currency of this balance | [optional] 
**available_balance** | **Float** | The available balance for the given currency | [optional] 
**previous_day_closing_balance** | **Float** | The balance at end of previous day | [optional] 
**current_balance_date** | **String** | Current date | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::DlocalBalance.new(currency: USD,
                                 available_balance: 1000,
                                 previous_day_closing_balance: 1000,
                                 current_balance_date: 2026-02-24)
```


