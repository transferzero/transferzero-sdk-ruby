# TransferZero::Mandate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the mandate | [optional] 
**status** | **String** | Current state of the mandate.  - &#x60;pending&#x60; — created, awaiting signing flow - &#x60;notified&#x60; — recipient has been notified to sign - &#x60;signed&#x60; — recipient signed; mandate is active - &#x60;failed&#x60; — signing flow failed (e.g. AVS/CDV rejection) - &#x60;bypassed&#x60; — administratively bypassed for an inward AZA payment | [optional] 
**type_id** | **Integer** | Numeric beneficiary type identifier. Identifies whether the mandate was issued for a natural person, sole proprietor, partnership, company, etc. | [optional] 
**reference** | **String** | Human-readable reference assigned to the mandate at creation. | [optional] 
**signed_at** | **DateTime** | Timestamp when the mandate transitioned to &#x60;signed&#x60;. &#x60;null&#x60; for mandates that are pending, notified, failed, or bypassed. | [optional] 
**created_at** | **DateTime** | Timestamp when the mandate was created. | [optional] 
**updated_at** | **DateTime** | Timestamp when the mandate was last updated. | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Mandate.new(id: bf9ff782-e182-45ac-abea-5bce83ad6670,
                                 status: signed,
                                 type_id: 1,
                                 reference: 74a07630,
                                 signed_at: null,
                                 created_at: null,
                                 updated_at: null)
```


