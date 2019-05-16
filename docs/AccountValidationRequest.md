# TransferZero::AccountValidationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bank_account** | **String** | Account Number to query | 
**bank_code** | **String** | Bank Code to query - same codes are used as for creating the transactions | 
**country** | **String** | Country of account in 2-character alpha ISO 3166-2 country format (only NG is currently supported) | 
**currency** | **String** | The currency the bank account is in | 
**method** | **String** | The method of the payment. Currently only bank is supported | 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::AccountValidationRequest.new(bank_account: null,
                                 bank_code: null,
                                 country: null,
                                 currency: null,
                                 method: null)
```


