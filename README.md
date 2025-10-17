<div align="center">
  <img src="https://github.com/dubinc/dub/assets/28986134/3815d859-afaa-48f9-a9b3-c09964e4d404" alt="Dub.co Ruby SDK to interact with APIs.">
  <h3>Dub.co Ruby SDK</h3>
  <a href="https://speakeasyapi.dev/"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
  </a>
</div>

<br/>

Learn more about the Dub.co Ruby SDK in the [official documentation](https://dub.co/docs/sdks/ruby/overview).

<!-- Start Summary [summary] -->
## Summary

Dub API: Dub is the modern link attribution platform for short links, conversion tracking, and affiliate programs.
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents
<!-- $toc-max-depth=2 -->
  * [SDK Installation](#sdk-installation)
  * [SDK Example Usage](#sdk-example-usage)
  * [Authentication](#authentication)
  * [Available Resources and Operations](#available-resources-and-operations)
  * [Error Handling](#error-handling)
  * [Server Selection](#server-selection)
* [Development](#development)
  * [Contributions](#contributions)

<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

The SDK can be installed using [RubyGems](https://rubygems.org/):

```bash
gem install dub
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example 1

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

### Example 2

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

<!-- Start Authentication [security] -->
## Authentication

### Per-Client Security Schemes

This SDK supports the following security scheme globally:

| Name    | Type | Scheme      |
| ------- | ---- | ----------- |
| `token` | http | HTTP Bearer |

You can set the security parameters through the `security` optional parameter when initializing the SDK client instance. For example:
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
<!-- End Authentication [security] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [analytics](docs/sdks/analytics/README.md)

* [retrieve](docs/sdks/analytics/README.md#retrieve) - Retrieve analytics for a link, a domain, or the authenticated workspace.

### [commissions](docs/sdks/commissions/README.md)

* [list](docs/sdks/commissions/README.md#list) - Get commissions for a program.
* [update](docs/sdks/commissions/README.md#update) - Update a commission.

### [customers](docs/sdks/customers/README.md)

* [list](docs/sdks/customers/README.md#list) - Retrieve a list of customers
* [~~create~~](docs/sdks/customers/README.md#create) - Create a customer :warning: **Deprecated**
* [get](docs/sdks/customers/README.md#get) - Retrieve a customer
* [update](docs/sdks/customers/README.md#update) - Update a customer
* [delete](docs/sdks/customers/README.md#delete) - Delete a customer

### [domains](docs/sdks/domains/README.md)

* [create](docs/sdks/domains/README.md#create) - Create a domain
* [list](docs/sdks/domains/README.md#list) - Retrieve a list of domains
* [update](docs/sdks/domains/README.md#update) - Update a domain
* [delete](docs/sdks/domains/README.md#delete) - Delete a domain
* [register](docs/sdks/domains/README.md#register) - Register a domain
* [check_status](docs/sdks/domains/README.md#check_status) - Check the availability of one or more domains

### [embed_tokens](docs/sdks/embedtokens/README.md)

* [referrals](docs/sdks/embedtokens/README.md#referrals) - Create a referrals embed token

### [events](docs/sdks/events/README.md)

* [list](docs/sdks/events/README.md#list) - Retrieve a list of events

### [folders](docs/sdks/folders/README.md)

* [create](docs/sdks/folders/README.md#create) - Create a folder
* [list](docs/sdks/folders/README.md#list) - Retrieve a list of folders
* [update](docs/sdks/folders/README.md#update) - Update a folder
* [delete](docs/sdks/folders/README.md#delete) - Delete a folder

### [links](docs/sdks/links/README.md)

* [create](docs/sdks/links/README.md#create) - Create a link
* [list](docs/sdks/links/README.md#list) - Retrieve a list of links
* [count](docs/sdks/links/README.md#count) - Retrieve links count
* [get](docs/sdks/links/README.md#get) - Retrieve a link
* [update](docs/sdks/links/README.md#update) - Update a link
* [delete](docs/sdks/links/README.md#delete) - Delete a link
* [create_many](docs/sdks/links/README.md#create_many) - Bulk create links
* [update_many](docs/sdks/links/README.md#update_many) - Bulk update links
* [delete_many](docs/sdks/links/README.md#delete_many) - Bulk delete links
* [upsert](docs/sdks/links/README.md#upsert) - Upsert a link

### [partners](docs/sdks/partners/README.md)

* [create](docs/sdks/partners/README.md#create) - Create or update a partner
* [list](docs/sdks/partners/README.md#list) - List all partners
* [create_link](docs/sdks/partners/README.md#create_link) - Create a link for a partner
* [retrieve_links](docs/sdks/partners/README.md#retrieve_links) - Retrieve a partner's links.
* [upsert_link](docs/sdks/partners/README.md#upsert_link) - Upsert a link for a partner
* [analytics](docs/sdks/partners/README.md#analytics) - Retrieve analytics for a partner

### [qr_codes](docs/sdks/qrcodes/README.md)

* [get](docs/sdks/qrcodes/README.md#get) - Retrieve a QR code

### [tags](docs/sdks/tags/README.md)

* [create](docs/sdks/tags/README.md#create) - Create a tag
* [list](docs/sdks/tags/README.md#list) - Retrieve a list of tags
* [update](docs/sdks/tags/README.md#update) - Update a tag
* [delete](docs/sdks/tags/README.md#delete) - Delete a tag

### [track](docs/sdks/track/README.md)

* [lead](docs/sdks/track/README.md#lead) - Track a lead
* [sale](docs/sdks/track/README.md#sale) - Track a sale

### [workspaces](docs/sdks/workspaces/README.md)

* [get](docs/sdks/workspaces/README.md#get) - Retrieve a workspace
* [update](docs/sdks/workspaces/README.md#update) - Update a workspace

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Error Handling [errors] -->
## Error Handling

Handling errors in this SDK should largely match your expectations. All operations return a response object or raise an error.

By default an API error will raise a `Errors::APIError`, which has the following properties:

| Property       | Type                                    | Description           |
|----------------|-----------------------------------------|-----------------------|
| `message`     | *string*                                 | The error message     |
| `status_code`  | *int*                                   | The HTTP status code  |
| `raw_response` | *Faraday::Response*                     | The raw HTTP response |
| `body`        | *string*                                 | The response content  |

When custom error responses are specified for an operation, the SDK may also throw their associated exception. You can refer to respective *Errors* tables in SDK docs for more details on possible exception types for each operation. For example, the `create` method throws the following exceptions:

| Error Type                          | Status Code | Content Type     |
| ----------------------------------- | ----------- | ---------------- |
| Models::Errors::BadRequest          | 400         | application/json |
| Models::Errors::Unauthorized        | 401         | application/json |
| Models::Errors::Forbidden           | 403         | application/json |
| Models::Errors::NotFound            | 404         | application/json |
| Models::Errors::Conflict            | 409         | application/json |
| Models::Errors::InviteExpired       | 410         | application/json |
| Models::Errors::UnprocessableEntity | 422         | application/json |
| Models::Errors::RateLimitExceeded   | 429         | application/json |
| Models::Errors::InternalServerError | 500         | application/json |
| Errors::APIError                    | 4XX, 5XX    | \*/\*            |

### Example

```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

begin
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
rescue Models::Errors::BadRequest => e
  # handle e.container data
  raise e
rescue Models::Errors::Unauthorized => e
  # handle e.container data
  raise e
rescue Models::Errors::Forbidden => e
  # handle e.container data
  raise e
rescue Models::Errors::NotFound => e
  # handle e.container data
  raise e
rescue Models::Errors::Conflict => e
  # handle e.container data
  raise e
rescue Models::Errors::InviteExpired => e
  # handle e.container data
  raise e
rescue Models::Errors::UnprocessableEntity => e
  # handle e.container data
  raise e
rescue Models::Errors::RateLimitExceeded => e
  # handle e.container data
  raise e
rescue Models::Errors::InternalServerError => e
  # handle e.container data
  raise e
rescue Errors::APIError => e
  # handle default exception
  raise e
end

```
<!-- End Error Handling [errors] -->

<!-- Start Server Selection [server] -->
## Server Selection

### Override Server URL Per-Client

The default server can be overridden globally by passing a URL to the `server_url (String)` optional parameter when initializing the SDK client instance. For example:
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      server_url: 'https://api.dub.co',
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
<!-- End Server Selection [server] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a Github issue as a proof of concept and we'll do our best to include it in a future release!

### SDK Created by [Speakeasy](https://docs.speakeasyapi.dev/docs/using-speakeasy/client-sdks)
