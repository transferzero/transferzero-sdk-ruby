# TransferZero::ProofOfPayment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | UUID of the uploaded document | [optional] 
**file_name** | **String** | Name of the uploaded file | [optional] 
**thumbnail** | **String** | URL to thumbnail image of the uploaded file | [optional] 
**url** | **String** | URL to uploaded file | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::ProofOfPayment.new(id: null,
                                 file_name: my_file.jpg,
                                 thumbnail: https://bitpesa-development.s3.eu-west-1.amazonaws.com/my_file_thumb.jpg,
                                 url: https://bitpesa-development.s3.eu-west-1.amazonaws.com/my_file.jpg)
```


