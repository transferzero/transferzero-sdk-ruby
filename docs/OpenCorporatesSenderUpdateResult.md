# TransferZero::OpenCorporatesSenderUpdateResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**search** | [**OpenCorporatesSearch**](OpenCorporatesSearch.md) |  | [optional] 
**sender** | [**Sender**](Sender.md) |  | [optional] 
**errors** | **Hash&lt;String, Array&lt;ValidationErrorDescription&gt;&gt;** | The fields that have some problems and don&#39;t pass validation | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::OpenCorporatesSenderUpdateResult.new(search: null,
                                 sender: null,
                                 errors: {&quot;phone_number&quot;:[{&quot;error&quot;:&quot;invalid&quot;}],&quot;documents&quot;:[{&quot;error&quot;:&quot;blank&quot;}]})
```


