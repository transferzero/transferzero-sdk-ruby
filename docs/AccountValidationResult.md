# TransferZero::AccountValidationResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_name** | **String** |  | [optional] 
**mapped_mobile_provider** | **String** |  | [optional] 
**account_status** | **String** |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::AccountValidationResult.new(account_name: John Smith,
                                 mapped_mobile_provider: mtn,
                                 account_status: active)
```


