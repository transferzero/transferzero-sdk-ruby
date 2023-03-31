# TransferZero::CurrencyOppositeAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate** | **Float** | The rate of this particular currency with the base one | [optional] 
**mtm_rate** | **Float** | Mark to market rate of this particular currency against the base one with the margin factored in | [optional] 
**margin** | **String** | The margin set for transactions of this particular currency with the base one | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::CurrencyOppositeAllOf.new(rate: null,
                                 mtm_rate: null,
                                 margin: null)
```


