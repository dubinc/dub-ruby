# Partners
(*partners*)

## Overview

### Available Operations

* [create](#create) - Create a partner
* [create_link](#create_link) - Create a link for a partner
* [retrieve_links](#retrieve_links) - Retrieve a partner's links.
* [upsert_link](#upsert_link) - Upsert a link for a partner
* [analytics](#analytics) - Retrieve analytics for a partner

## create

Create a partner for a program. If partner exists, automatically enrolls them.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::CreatePartnerRequestBody.new(
  program_id: "<id>",
  name: "<value>",
  email: "Loyal79@yahoo.com",
  link_props: ::OpenApiSDK::Operations::LinkProps.new(
    external_id: "123456",
    tag_ids: [
      "clux0rgak00011...",
    ],
    test_variants: [
      ::OpenApiSDK::Operations::CreatePartnerTestVariants.new(
        url: "https://example.com/variant-1",
        percentage: 50.0,
      ),
      ::OpenApiSDK::Operations::CreatePartnerTestVariants.new(
        url: "https://example.com/variant-2",
        percentage: 50.0,
      ),
    ],
  ),
)

res = s.partners.create(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::OpenApiSDK::Operations::CreatePartnerRequestBody](../../models/operations/createpartnerrequestbody.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreatePartnerResponse)](../../models/operations/createpartnerresponse.md)**



## create_link

Create a link for a partner that is enrolled in your program.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::CreatePartnerLinkRequestBody.new(
  program_id: "<id>",
  link_props: ::OpenApiSDK::Operations::CreatePartnerLinkLinkProps.new(
    external_id: "123456",
    tag_ids: [
      "clux0rgak00011...",
    ],
    test_variants: [
      ::OpenApiSDK::Operations::CreatePartnerLinkTestVariants.new(
        url: "https://example.com/variant-1",
        percentage: 50.0,
      ),
      ::OpenApiSDK::Operations::CreatePartnerLinkTestVariants.new(
        url: "https://example.com/variant-2",
        percentage: 50.0,
      ),
    ],
  ),
)

res = s.partners.create_link(req)

if ! res.link_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::OpenApiSDK::Operations::CreatePartnerLinkRequestBody](../../models/operations/createpartnerlinkrequestbody.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreatePartnerLinkResponse)](../../models/operations/createpartnerlinkresponse.md)**



## retrieve_links

Retrieve a partner's links by their partner ID or tenant ID.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::RetrieveLinksRequest.new(
  program_id: "<id>",
)

res = s.partners.retrieve_links(req)

if ! res.links.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::OpenApiSDK::Operations::RetrieveLinksRequest](../../models/operations/retrievelinksrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveLinksResponse)](../../models/operations/retrievelinksresponse.md)**



## upsert_link

Upsert a link for a partner that is enrolled in your program. If a link with the same URL already exists, return it (or update it if there are any changes). Otherwise, a new link will be created.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::UpsertPartnerLinkRequestBody.new(
  program_id: "<id>",
  link_props: ::OpenApiSDK::Operations::UpsertPartnerLinkLinkProps.new(
    external_id: "123456",
    tag_ids: [
      "clux0rgak00011...",
    ],
    test_variants: [
      ::OpenApiSDK::Operations::UpsertPartnerLinkTestVariants.new(
        url: "https://example.com/variant-1",
        percentage: 50.0,
      ),
      ::OpenApiSDK::Operations::UpsertPartnerLinkTestVariants.new(
        url: "https://example.com/variant-2",
        percentage: 50.0,
      ),
    ],
  ),
)

res = s.partners.upsert_link(req)

if ! res.link_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::OpenApiSDK::Operations::UpsertPartnerLinkRequestBody](../../models/operations/upsertpartnerlinkrequestbody.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::UpsertPartnerLinkResponse)](../../models/operations/upsertpartnerlinkresponse.md)**



## analytics

Retrieve analytics for a partner within a program. The response type vary based on the `groupBy` query parameter.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::RetrievePartnerAnalyticsRequest.new(
  timezone: "America/New_York",
  program_id: "<id>",
)

res = s.partners.analytics(req)

if ! res.one_of.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::OpenApiSDK::Operations::RetrievePartnerAnalyticsRequest](../../models/operations/retrievepartneranalyticsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrievePartnerAnalyticsResponse)](../../models/operations/retrievepartneranalyticsresponse.md)**

