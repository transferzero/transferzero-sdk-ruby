# TransferZero::WebhookLogMetadataRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**headers** | **Hash&lt;String, String&gt;** |  | [optional] 
**body** | **String** | The body that was sent in the webhook | [optional] 
**url** | **String** | Webhook URL | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::WebhookLogMetadataRequest.new(headers: {&quot;Content-Type&quot;:&quot;application/json&quot;,&quot;Authorization-Nonce&quot;:&quot;a0696374-de2f-4b4e-a2d7-cb4e0a1240c0&quot;,&quot;Authorization-Key&quot;:&quot;a0696374-de2f-4b4e-a2d7-cb4e0a1240c0&quot;,&quot;Authorization-Signature&quot;:&quot;a0696374-de2f-4b4e-a2d7-cb4e0a1240c0&quot;,&quot;Accept-Encoding&quot;:&quot;gzip;q&#x3D;1.0,deflate;q&#x3D;0.6,identity;q&#x3D;0.3&quot;,&quot;Accept&quot;:&quot;*/*&quot;,&quot;User-Agent&quot;:&quot;Ruby&quot;,&quot;Host&quot;:&quot;localhost:3000&quot;,&quot;Content-Length&quot;:&quot;3549&quot;},
                                 body: {&quot;webhook&quot;:&quot;54cbd6f2-b920-41e9-a225-b1000e024787&quot;,&quot;event&quot;:&quot;transaction.mispaid&quot;,&quot;object&quot;:{&quot;id&quot;:&quot;cbcea909-85e3-448f-bd07-b9ecdff6e971&quot;}},
                                 url: http://localhost:3000)
```


