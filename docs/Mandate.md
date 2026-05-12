# TransferZero::Mandate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the mandate | [optional] 
**status** | [**MandateStatus**](MandateStatus.md) |  | [optional] 
**type_id** | **Integer** | Numeric beneficiary type identifier. Identifies whether the mandate was issued for a natural person, sole proprietor, partnership, company, etc. | [optional] 
**reference** | **String** | Human-readable reference assigned to the mandate at creation. | [optional] 
**signed_at** | **DateTime** | Timestamp when the mandate transitioned to &#x60;signed&#x60;. &#x60;null&#x60; for mandates that are pending, notified, failed, or bypassed. | [optional] 
**created_at** | **DateTime** | Timestamp when the mandate was created. | [optional] 
**updated_at** | **DateTime** | Timestamp when the mandate was last updated. | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Mandate.new(id: bf9ff782-e182-45ac-abea-5bce83ad6670,
                                 status: null,
                                 type_id: 1,
                                 reference: 74a07630,
                                 signed_at: null,
                                 created_at: null,
                                 updated_at: null)
```


