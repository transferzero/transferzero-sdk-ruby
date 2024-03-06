# TransferZero::PayoutMethodDetailsIBAN

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | 
**last_name** | **String** |  | 
**iban** | **String** |  | 
**bic** | **String** |  | [optional] 
**bank_name** | **String** |  | [optional] 
**narration** | **String** |  | [optional] 
**birth_date** | **Date** | Date of birth of recipient | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayoutMethodDetailsIBAN.new(first_name: null,
                                 last_name: null,
                                 iban: null,
                                 bic: null,
                                 bank_name: null,
                                 narration: null,
                                 birth_date: null)
```


