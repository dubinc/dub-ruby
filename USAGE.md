<!-- Start SDK Example Usage [usage] -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::CreateLinkRequestBody.new(
  url: 'https://google.com',
  external_id: '123456',
  tag_ids: [
    'clux0rgak00011...',
  ],
  test_variants: [
    Models::Operations::TestVariants.new(
      url: 'https://example.com/variant-1',
      percentage: 50.0,
    ),
    Models::Operations::TestVariants.new(
      url: 'https://example.com/variant-2',
      percentage: 50.0,
    ),
  ],
)

res = s.links.create(request: req)

unless res.nil?
  # handle response
end

```

```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::UpsertLinkRequestBody.new(
  url: 'https://google.com',
  external_id: '123456',
  tag_ids: [
    'clux0rgak00011...',
  ],
  test_variants: [
    Models::Operations::UpsertLinkTestVariants.new(
      url: 'https://example.com/variant-1',
      percentage: 50.0,
    ),
    Models::Operations::UpsertLinkTestVariants.new(
      url: 'https://example.com/variant-2',
      percentage: 50.0,
    ),
  ],
)

res = s.links.upsert(request: req)

unless res.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->