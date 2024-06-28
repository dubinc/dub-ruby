<!-- Start SDK Example Usage [usage] -->
```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.links.create(workspace_id="<value>", project_slug="<value>", request_body=::OpenApiSDK::Operations::CreateLinkRequestBody.new(
    url: "https://google/com",
    external_id: "123456",
    tag_ids: [
    "<value>",
  ],
  ))

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

    
res = s.links.upsert(workspace_id="<value>", project_slug="<value>", request_body=::OpenApiSDK::Operations::UpsertLinkRequestBody.new(
    url: "https://google/com",
    external_id: "123456",
    tag_ids: [
    "<value>",
  ],
  ))

if ! res.link_schema.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->