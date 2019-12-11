# TransferZero::AccountValidationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bank_account** | **String** | Account Number to query | [optional] 
**bank_code** | **String** | Bank Code to query - same codes are used as for creating the transactions | [optional] 
**phone_number** | **String** | Phone number to query | [optional] 
**country** | **String** | Country of account in 2-character alpha ISO 3166-2 country format | 
**currency** | **String** | The currency the bank account is in | 
**method** | **String** | The method of the payment. Currently bank and mobile are supported | 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::AccountValidationRequest.new(bank_account: null,
                                 bank_code: null,
                                 phone_number: +233000000000,
                                 country: null,
                                 currency: null,
                                 method: null)
```


