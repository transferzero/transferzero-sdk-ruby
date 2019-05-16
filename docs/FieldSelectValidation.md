# TransferZero::FieldSelectValidation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_in** | [**Object**](.md) | Describes the valid options for this selectbox | [optional] 
**allow_blank** | **Boolean** | Describes whether the field is optional or not | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::FieldSelectValidation.new(_in: {&quot;20&quot;:&quot;Current&quot;,&quot;10&quot;:&quot;Savings&quot;},
                                 allow_blank: null)
```


