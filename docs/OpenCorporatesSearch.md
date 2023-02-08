# TransferZero::OpenCorporatesSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country** | **String** | Alpha2 code of the country that the company to be searched is registered in | 
**registration_number** | **String** | Registration number of the company to be searched | 
**state** | **String** | State/Province for countries that require it. | [optional] 
**name** | **String** | The company name that was returned from Open Corporates search | [optional] 
**errors** | **Hash&lt;String, Array&lt;ValidationErrorDescription&gt;&gt;** | The fields that have some problems and don&#39;t pass validation | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::OpenCorporatesSearch.new(country: GB,
                                 registration_number: null,
                                 state: null,
                                 name: null,
                                 errors: {&quot;phone_number&quot;:[{&quot;error&quot;:&quot;invalid&quot;}],&quot;documents&quot;:[{&quot;error&quot;:&quot;blank&quot;}]})
```


