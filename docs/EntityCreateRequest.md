# TransferZero::EntityCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_id** | **String** | Id of linked entity | [optional] 
**entity_type** | **String** | Type of entity to create eg Sender, Company  | [optional] 
**automated_fields** | [**Object**](.md) | Attributes needed to calculate the risk scores for the automated fields | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::EntityCreateRequest.new(entity_id: 86912555-272a-48f7-bdbb-eab653150e01,
                                 entity_type: null,
                                 automated_fields: {&quot;financial_institution&quot;:&quot;true&quot;,&quot;financial_regulator&quot;:&quot;&quot;,&quot;regulatory_licence_number&quot;:&quot;&quot;,&quot;amount_monthly_transactions&quot;:&quot;Above $500,000&quot;,&quot;country_of_incorporation&quot;:&quot;AF&quot;,&quot;trading_country&quot;:&quot;US&quot;,&quot;shareholders_nationalities&quot;:[&quot;AF&quot;,&quot;GB&quot;,&quot;IT&quot;],&quot;directors_nationalities&quot;:[&quot;AU&quot;,&quot;BE&quot;,&quot;GM&quot;],&quot;directors_residences&quot;:[&quot;AR&quot;,&quot;HK&quot;,&quot;SS&quot;],&quot;sanction_check_state&quot;:&quot;1&quot;})
```


