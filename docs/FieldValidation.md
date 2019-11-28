# TransferZero::FieldValidation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**presence** | **Boolean** | Describes whether the field is mandatory or not | [optional] 
**inclusion** | [**FieldSelectValidation**](FieldSelectValidation.md) |  | [optional] 
**format** | [**Object**](.md) | Contains the regex to use to validate the input field | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::FieldValidation.new(presence: null,
                                 inclusion: null,
                                 format: {&quot;with&quot;:&quot;(?-mix:\\A\\d+\\z)&quot;})
```


