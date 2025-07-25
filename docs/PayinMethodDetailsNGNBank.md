# TransferZero::PayinMethodDetailsNGNBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone_number** | **String** | Sender&#39;s phone number | [optional] 
**account_name** | **String** | Merchant&#39;s virtual account name | [optional] 
**account_number** | **String** | Merchant&#39;s virtual account number | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PayinMethodDetailsNGNBank.new(phone_number: +2348187221236,
                                 account_name: Test Merchant,
                                 account_number: 1234567890)
```


