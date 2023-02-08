# TransferZero::OpenCorporatesSenderUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Id of the sender to be updated with Open Corporates search results | 
**country** | **String** | Alpha2 code of the country that the company to be searched is registered in | 
**registration_number** | **String** | Registration number of the company to be searched | 
**state** | **String** | State/Province for countries that require it. | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::OpenCorporatesSenderUpdate.new(id: null,
                                 country: GB,
                                 registration_number: null,
                                 state: null)
```


