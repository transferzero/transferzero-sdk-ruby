# TransferZero::Document

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**upload** | **String** | Base64 encoded data uri of an image/pdf file or a fully qualified url | 
**url** | **String** | URL of the document location | [optional] 
**upload_file_name** | **String** | Name of the upload | 
**metadata** | [**Object**](.md) | Metadata of document | [optional] 
**upload_content_type** | **String** |  | [optional] 
**upload_file_size** | **Integer** |  | [optional] 
**category** | **String** | uncategorised | [optional] 
**side** | **String** | The side of the KYC ID. One of &#39;front&#39; or &#39;back&#39; | [optional] 
**document_type** | **String** | This is a brief description of the document type | [optional] 
**issuing_country** | **String** | Issuing country of ID in 2-character alpha ISO 3166-2 country format | [optional] 
**id** | **String** |  | [optional] 
**document_id** | **String** | Document ID issued by government | [optional] 
**expiry_date** | **Date** | Document expiry date issued by government | [optional] 
**errors** | **Hash&lt;String, Array&lt;ValidationErrorDescription&gt;&gt;** | The fields that have some problems and don&#39;t pass validation | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Document.new(upload: data:image/png;base64,iVBORw0KGg...lFTkSuQmCC,
                                 url: https://bitpesa-documents.amazonaws.com/document.pdf,
                                 upload_file_name: example.png,
                                 metadata: {},
                                 upload_content_type: image/png,
                                 upload_file_size: 30255,
                                 category: null,
                                 side: null,
                                 document_type: certificate_of_business_name_registration,
                                 issuing_country: NG,
                                 id: ebe9bc0b-f2f6-4ce8-802a-8b79912d041e,
                                 document_id: XYZ12345,
                                 expiry_date: null,
                                 errors: {&quot;phone_number&quot;:[{&quot;error&quot;:&quot;invalid&quot;}],&quot;documents&quot;:[{&quot;error&quot;:&quot;blank&quot;}]})
```


