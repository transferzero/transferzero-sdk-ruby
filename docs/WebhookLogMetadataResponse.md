# TransferZero::WebhookLogMetadataResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **String** | Full body of response | [optional] 
**headers** | **Hash&lt;String, String&gt;** | Headers delivered with webhook response | [optional] 
**status** | **String** | Status of response | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::WebhookLogMetadataResponse.new(body: &lt;!DOCTYPE html&gt; &lt;html lang&#x3D;&quot;en&quot;&gt; &lt;head&gt; &lt;meta charset&#x3D;&quot;utf-8&quot; /&gt; &lt;title&gt;Action Controller: Exception caught&lt;/title&gt;,
                                 headers: {&quot;date&quot;:&quot;Fri, 11 Jan 2019 09:00:00 GMT&quot;,&quot;connection&quot;:&quot;close&quot;,&quot;content-type&quot;:&quot;text/html; charset&#x3D;utf-8&quot;,&quot;x-web-console-session-id&quot;:&quot;a0696374-de2f-4b4e-a2d7-cb4e0a1240c0&quot;,&quot;x-web-console-mount-point&quot;:&quot;/__web_console&quot;,&quot;x-request-id&quot;:&quot;a0696374-de2f-4b4e-a2d7-cb4e0a1240c0&quot;,&quot;x-runtime&quot;:&quot;0.484015&quot;,&quot;content-length&quot;:&quot;145453&quot;},
                                 status: 500)
```


