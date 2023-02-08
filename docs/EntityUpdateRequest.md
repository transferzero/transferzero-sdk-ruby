# TransferZero::EntityUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_id** | **String** | Id of linked entity | [optional] 
**entity_type** | **String** | Type of entity to update eg. Sender, Company  | [optional] 
**manual_fields** | [**Object**](.md) | Attributes needed to calculate the risk scores for the manual fields | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::EntityUpdateRequest.new(entity_id: 86912555-272a-48f7-bdbb-eab653150e01,
                                 entity_type: null,
                                 manual_fields: {&quot;sanctions_lists_checked&quot;:&quot;yes&quot;,&quot;adverse_media&quot;:&quot;no&quot;,&quot;company_based_in_sanctioned_country&quot;:&quot;yes&quot;,&quot;formal_actions_less_than_6_months&quot;:&quot;no&quot;,&quot;formal_actions_6_to_12_months&quot;:&quot;yes&quot;,&quot;formal_actions_12_to_24_months&quot;:&quot;no&quot;,&quot;under_investigation&quot;:&quot;yes&quot;,&quot;remarks&quot;:&quot;nothing to add&quot;})
```


