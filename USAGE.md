<!-- Start SDK Example Usage [usage] -->
```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::CreateLinkRequestBody.new(
  url: "https://google.com",
  external_id: "123456",
  tag_ids: [
    "clux0rgak00011...",
  ],
  test_variants: [
    ::OpenApiSDK::Operations::TestVariants.new(
      url: "https://example.com/variant-1",
      percentage: 50.0,
    ),
    ::OpenApiSDK::Operations::TestVariants.new(
      url: "https://example.com/variant-2",
      percentage: 50.0,
    ),
  ],
)

res = s.links.create(req)

if ! res.link_schema.nil?
  # handle response
end

```

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::UpsertLinkRequestBody.new(
  url: "https://google.com",
  external_id: "123456",
  tag_ids: [
    "clux0rgak00011...",
  ],
  test_variants: [
    ::OpenApiSDK::Operations::UpsertLinkTestVariants.new(
      url: "https://example.com/variant-1",
      percentage: 50.0,
    ),
    ::OpenApiSDK::Operations::UpsertLinkTestVariants.new(
      url: "https://example.com/variant-2",
      percentage: 50.0,
    ),
  ],
)

res = s.links.upsert(req)

if ! res.link_schema.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->