# TransferZero::Entity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**total_score** | **Integer** | Total score of risk assessment | [optional] 
**rating** | [**EntityRating**](EntityRating.md) |  | [optional] 
**state** | [**EntityState**](EntityState.md) |  | [optional] 
**entity_id** | **String** | Id of linked entity | [optional] 
**entity_type** | **String** | Type of entity to create eg. Sender, Company  | [optional] 
**remarks** | **String** | Notes about entity | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Entity.new(id: 39,
                                 total_score: 35,
                                 rating: null,
                                 state: null,
                                 entity_id: 86912555-272a-48f7-bdbb-eab653150e01,
                                 entity_type: Sender,
                                 remarks: Not sure if suited to do transactions)
```


