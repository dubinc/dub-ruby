# Partners
(*partners*)

## Overview

### Available Operations

* [create](#create) - Create or update a partner
* [list](#list) - List all partners
* [create_link](#create_link) - Create a link for a partner
* [retrieve_links](#retrieve_links) - Retrieve a partner's links.
* [upsert_link](#upsert_link) - Upsert a link for a partner
* [analytics](#analytics) - Retrieve analytics for a partner
* [ban](#ban) - Ban a partner

## create

Creates or updates a partner record (upsert behavior). If a partner with the same email already exists, their program enrollment will be updated with the provided tenantId. If no existing partner is found, a new partner will be created using the supplied information.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPartner" method="post" path="/partners" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::CreatePartnerRequestBody.new(
  email: 'Summer50@yahoo.com',
  link_props: Models::Operations::LinkProps.new(
    external_id: '123456',
    tag_ids: [
      'clux0rgak00011...',
    ],
    test_variants: [
      Models::Operations::CreatePartnerTestVariants.new(
        url: 'https://example.com/variant-1',
        percentage: 50.0,
      ),
      Models::Operations::CreatePartnerTestVariants.new(
        url: 'https://example.com/variant-2',
        percentage: 50.0,
      ),
    ],
  ),
)

res = s.partners.create(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::CreatePartnerRequestBody](../../models/operations/createpartnerrequestbody.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::CreatePartnerResponseBody)](../../models/operations/createpartnerresponsebody.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::BadRequest          | 400                                 | application/json                    |
| Models::Errors::Unauthorized        | 401                                 | application/json                    |
| Models::Errors::Forbidden           | 403                                 | application/json                    |
| Models::Errors::NotFound            | 404                                 | application/json                    |
| Models::Errors::Conflict            | 409                                 | application/json                    |
| Models::Errors::InviteExpired       | 410                                 | application/json                    |
| Models::Errors::UnprocessableEntity | 422                                 | application/json                    |
| Models::Errors::RateLimitExceeded   | 429                                 | application/json                    |
| Models::Errors::InternalServerError | 500                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## list

List all partners for a partner program.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPartners" method="get" path="/partners" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::ListPartnersRequest.new(
  status: Models::Operations::ListPartnersQueryParamStatus::APPROVED,
  country: 'US',
  email: 'panic@thedis.co',
  tenant_id: '1K0NM7HCN944PEMZ3CQPH43H8',
  search: 'john',
  page_size: 50.0,
)

res = s.partners.list(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListPartnersRequest](../../models/operations/listpartnersrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(T::Array[Models::Operations::ListPartnersResponseBody])](../../models/operations/.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::BadRequest          | 400                                 | application/json                    |
| Models::Errors::Unauthorized        | 401                                 | application/json                    |
| Models::Errors::Forbidden           | 403                                 | application/json                    |
| Models::Errors::NotFound            | 404                                 | application/json                    |
| Models::Errors::Conflict            | 409                                 | application/json                    |
| Models::Errors::InviteExpired       | 410                                 | application/json                    |
| Models::Errors::UnprocessableEntity | 422                                 | application/json                    |
| Models::Errors::RateLimitExceeded   | 429                                 | application/json                    |
| Models::Errors::InternalServerError | 500                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create_link

Create a link for a partner that is enrolled in your program.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPartnerLink" method="post" path="/partners/links" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::CreatePartnerLinkRequestBody.new(
  link_props: Models::Operations::CreatePartnerLinkLinkProps.new(
    external_id: '123456',
    tag_ids: [
      'clux0rgak00011...',
    ],
    test_variants: [
      Models::Operations::CreatePartnerLinkTestVariants.new(
        url: 'https://example.com/variant-1',
        percentage: 50.0,
      ),
      Models::Operations::CreatePartnerLinkTestVariants.new(
        url: 'https://example.com/variant-2',
        percentage: 50.0,
      ),
    ],
  ),
)

res = s.partners.create_link(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::CreatePartnerLinkRequestBody](../../models/operations/createpartnerlinkrequestbody.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Shared::LinkSchema)](../../models/operations/linkschema.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::BadRequest          | 400                                 | application/json                    |
| Models::Errors::Unauthorized        | 401                                 | application/json                    |
| Models::Errors::Forbidden           | 403                                 | application/json                    |
| Models::Errors::NotFound            | 404                                 | application/json                    |
| Models::Errors::Conflict            | 409                                 | application/json                    |
| Models::Errors::InviteExpired       | 410                                 | application/json                    |
| Models::Errors::UnprocessableEntity | 422                                 | application/json                    |
| Models::Errors::RateLimitExceeded   | 429                                 | application/json                    |
| Models::Errors::InternalServerError | 500                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## retrieve_links

Retrieve a partner's links by their partner ID or tenant ID.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="retrieveLinks" method="get" path="/partners/links" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::RetrieveLinksRequest.new()

res = s.partners.retrieve_links(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::RetrieveLinksRequest](../../models/operations/retrievelinksrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(T::Array[Models::Operations::RetrieveLinksResponseBody])](../../models/operations/.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::BadRequest          | 400                                 | application/json                    |
| Models::Errors::Unauthorized        | 401                                 | application/json                    |
| Models::Errors::Forbidden           | 403                                 | application/json                    |
| Models::Errors::NotFound            | 404                                 | application/json                    |
| Models::Errors::Conflict            | 409                                 | application/json                    |
| Models::Errors::InviteExpired       | 410                                 | application/json                    |
| Models::Errors::UnprocessableEntity | 422                                 | application/json                    |
| Models::Errors::RateLimitExceeded   | 429                                 | application/json                    |
| Models::Errors::InternalServerError | 500                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## upsert_link

Upsert a link for a partner that is enrolled in your program. If a link with the same URL already exists, return it (or update it if there are any changes). Otherwise, a new link will be created.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="upsertPartnerLink" method="put" path="/partners/links/upsert" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::UpsertPartnerLinkRequestBody.new(
  link_props: Models::Operations::UpsertPartnerLinkLinkProps.new(
    external_id: '123456',
    tag_ids: [
      'clux0rgak00011...',
    ],
    test_variants: [
      Models::Operations::UpsertPartnerLinkTestVariants.new(
        url: 'https://example.com/variant-1',
        percentage: 50.0,
      ),
      Models::Operations::UpsertPartnerLinkTestVariants.new(
        url: 'https://example.com/variant-2',
        percentage: 50.0,
      ),
    ],
  ),
)

res = s.partners.upsert_link(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpsertPartnerLinkRequestBody](../../models/operations/upsertpartnerlinkrequestbody.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Shared::LinkSchema)](../../models/operations/linkschema.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::BadRequest          | 400                                 | application/json                    |
| Models::Errors::Unauthorized        | 401                                 | application/json                    |
| Models::Errors::Forbidden           | 403                                 | application/json                    |
| Models::Errors::NotFound            | 404                                 | application/json                    |
| Models::Errors::Conflict            | 409                                 | application/json                    |
| Models::Errors::InviteExpired       | 410                                 | application/json                    |
| Models::Errors::UnprocessableEntity | 422                                 | application/json                    |
| Models::Errors::RateLimitExceeded   | 429                                 | application/json                    |
| Models::Errors::InternalServerError | 500                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## analytics

Retrieve analytics for a partner within a program. The response type vary based on the `groupBy` query parameter.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="retrievePartnerAnalytics" method="get" path="/partners/analytics" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::RetrievePartnerAnalyticsRequest.new(
  timezone: 'America/New_York',
  query: 'metadata[\'key\']:\'value\'',
)

res = s.partners.analytics(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::RetrievePartnerAnalyticsRequest](../../models/operations/retrievepartneranalyticsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(T.any(Models::Shared::PartnerAnalyticsCount, T::Array[Models::Shared::PartnerAnalyticsTimeseries], T::Array[Models::Shared::PartnerAnalyticsTopLinks]))](../../models/operations/retrievepartneranalyticsresponsebody.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::BadRequest          | 400                                 | application/json                    |
| Models::Errors::Unauthorized        | 401                                 | application/json                    |
| Models::Errors::Forbidden           | 403                                 | application/json                    |
| Models::Errors::NotFound            | 404                                 | application/json                    |
| Models::Errors::Conflict            | 409                                 | application/json                    |
| Models::Errors::InviteExpired       | 410                                 | application/json                    |
| Models::Errors::UnprocessableEntity | 422                                 | application/json                    |
| Models::Errors::RateLimitExceeded   | 429                                 | application/json                    |
| Models::Errors::InternalServerError | 500                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## ban

Ban a partner from your program. This will disable all links and mark all commissions as canceled.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="banPartner" method="post" path="/partners/ban" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = 

res = s.partners.ban(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::BanPartnerRequestBody](../../models/operations/banpartnerrequestbody.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::BanPartnerResponseBody)](../../models/operations/banpartnerresponsebody.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::BadRequest          | 400                                 | application/json                    |
| Models::Errors::Unauthorized        | 401                                 | application/json                    |
| Models::Errors::Forbidden           | 403                                 | application/json                    |
| Models::Errors::NotFound            | 404                                 | application/json                    |
| Models::Errors::Conflict            | 409                                 | application/json                    |
| Models::Errors::InviteExpired       | 410                                 | application/json                    |
| Models::Errors::UnprocessableEntity | 422                                 | application/json                    |
| Models::Errors::RateLimitExceeded   | 429                                 | application/json                    |
| Models::Errors::InternalServerError | 500                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |