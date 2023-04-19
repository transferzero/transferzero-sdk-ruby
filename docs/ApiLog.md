# TransferZero::ApiLog

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the API log | [optional] 
**request_method** | **String** | Initial HTTP request method | [optional] 
**request_url** | **String** | URL to which initial request was sent | [optional] 
**request_body** | **String** | Body sent with initial request returned as a string | [optional] 
**request_headers** | **Hash&lt;String, String&gt;** | Authorization and access information sent with initial request | [optional] 
**response_status** | **String** | Status of response | [optional] 
**response_body** | **String** | Full response body returned as a string | [optional] 
**response_headers** | **Hash&lt;String, String&gt;** | Headers returned with response | [optional] 
**created_at** | **String** | Date and time of response | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::ApiLog.new(id: a0696374-de2f-4b4e-a2d7-cb4e0a1240c0,
                                 request_method: POST,
                                 request_url: https://api.transferzero/v1/transactions/validate,
                                 request_body: {&quot;message&quot;:&quot;Email dispatched: Accepted (user@transferzero.com)&quot;},
                                 request_headers: {&quot;HTTP_VERSION&quot;:&quot;HTTP/1.1&quot;,&quot;HTTP_ACCEPT&quot;:&quot;application/json&quot;,&quot;HTTP_USER_AGENT&quot;:&quot;TransferZero Ruby&quot;,&quot;HTTP_AUTHORIZATION_NONCE&quot;:&quot;0000&quot;,&quot;HTTP_AUTHORIZATION_KEY&quot;:&quot;0000&quot;,&quot;HTTP_AUTHORIZATION_SIGNATURE&quot;:&quot;0000&quot;,&quot;HTTP_CONNECTION&quot;:&quot;close&quot;,&quot;HTTP_HOST&quot;:&quot;localhost:3002&quot;},
                                 response_status: 200,
                                 response_body: {&quot;object&quot;:{&quot;result&quot;:0}},
                                 response_headers: {&quot;X-Frame-Options&quot;:&quot;SAMEORIGIN&quot;,&quot;X-XSS-Protection&quot;:&quot;1; mode&#x3D;block&quot;,&quot;X-Content-Type-Options&quot;:&quot;nosniff&quot;,&quot;Content-Type&quot;:&quot;application/json; charset&#x3D;UTF-8&quot;},
                                 created_at: 2019-01-11T00:00:00.001+0000)
```


