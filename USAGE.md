<!-- Start SDK Example Usage [usage] -->
```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::CreateLinkRequestBody.new(
  url: "https://google.com",
  external_id: "123456",
  tag_ids: [
    "clux0rgak00011...",
  ],
)
    
res = s.links.create(req)

if ! res.link_schema.nil?
  # handle response
end

```

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::UpsertLinkRequestBody.new(
  url: "https://google.com",
  external_id: "123456",
  tag_ids: [
    "clux0rgak00011...",
  ],
)
    
res = s.links.upsert(req)

if ! res.link_schema.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->