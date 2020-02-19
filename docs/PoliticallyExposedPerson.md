# TransferZero::PoliticallyExposedPerson

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**name** | **String** | Full name of the politically exposed person  | [optional] 
**position** | **String** | The office held by the politically exposed person  | [optional] 
**started_date** | **DateTime** | The date on which the person started holding the office  | [optional] 
**ended_date** | **DateTime** | The date on which the person ended holding the office  | [optional] 
**sender_id** | **String** | The ID of the Sender to whom the person is attached to  | [optional] 
**created_at** | **DateTime** | Date and time the person was created | [optional] 
**updated_at** | **DateTime** | Date and time the person was updated | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::PoliticallyExposedPerson.new(id: 1,
                                 name: Ronald Reagan,
                                 position: President of the United States,
                                 started_date: null,
                                 ended_date: null,
                                 sender_id: 83a4f5fd-9260-4aaa-9743-63f8a6d8309d,
                                 created_at: null,
                                 updated_at: null)
```


