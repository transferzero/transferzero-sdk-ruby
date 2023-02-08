# TransferZero::BankAccountDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payin_ccy** | **String** | The currency for the bank account details | [optional] 
**account_name** | **String** | The business account name | [optional] 
**address** | **String** | The business address | [optional] 
**bank_name** | **String** | The name of the bank as registered with Central Bank of the country. | [optional] 
**bank_address** | **String** | The address of the bank | [optional] 
**iban** | **String** | An internationally agreed system of identifying bank accounts across national borders | [optional] 
**bic_or_swift** | **String** | Bank Identifier Code | [optional] 
**sort_code** | **String** | Domestic bank codes used to route money transfers between financial institutions in the United Kingdom/Ireland. | [optional] 
**account_number** | **String** | A unique string of numbers and, sometimes, letters and other characters that identifies the owner of an account. | [optional] 
**branch_name** | **String** | The name of the branch of the bank | [optional] 
**branch_code** | **String** | Unique identifying code for a given branch of a bank | [optional] 
**reference** | **String** | A statement from the bank regarding the bank details. | [optional] 
**status** | **String** | One of available, unavailable, hidden | [optional] 
**unavailable_message** | **String** | Reason for setting the bank status to unavailable | [optional] 
**id** | **String** |  | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::BankAccountDetails.new(payin_ccy: NGN,
                                 account_name: Jane Doe Limited,
                                 address: 798 John Owens, Street PO 1234,
                                 bank_name: Stanbic International Bank,
                                 bank_address: 798 Stanbic Street, PO 1234,
                                 iban: AL35202111090000000001234567,
                                 bic_or_swift: AAAABBCCDDD,
                                 sort_code: 12-34-56,
                                 account_number: AB123456,
                                 branch_name: STANBIC BANK,
                                 branch_code: 99922,
                                 reference: The bank requires the following reference details,
                                 status: available,
                                 unavailable_message: Experiencing downtime issues,
                                 id: ebe9bc0b-f2f6-4ce8-802a-8b79912d041e)
```


