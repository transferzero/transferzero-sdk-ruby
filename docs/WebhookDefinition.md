# TransferZero::WebhookDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | The URL to receive the webhook | 
**events** | **Array&lt;String&gt;** | A list of events to subscribe to | 
**metadata** | [**Object**](.md) |  | [optional] 
**id** | **String** | The ID of the webhook | [optional] 
**errors** | **Hash&lt;String, Array&lt;ValidationErrorDescription&gt;&gt;** | The fields that have some problems and don&#39;t pass validation | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::WebhookDefinition.new(url: http://webhook.site/webhooks,
                                 events: null,
                                 metadata: {},
                                 id: 1cd580b2-2a1b-4f73-81c8-0308308baef2,
                                 errors: {&quot;phone_number&quot;:[{&quot;error&quot;:&quot;invalid&quot;}],&quot;documents&quot;:[{&quot;error&quot;:&quot;blank&quot;}]})
```


