# EmbedTokens
(*embed_tokens*)

## Overview

### Available Operations

* [referrals](#referrals) - Create a referrals embed token

## referrals

Create a referrals embed token for the given partner/tenant.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createReferralsEmbedToken" method="post" path="/tokens/embed/referrals" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::CreateReferralsEmbedTokenRequestBody.new(
  partner: Models::Operations::Partner.new(
    email: 'Letha_Wuckert2@yahoo.com',
    link_props: Models::Operations::CreateReferralsEmbedTokenLinkProps.new(
      external_id: '123456',
      tag_ids: [
        'clux0rgak00011...',
      ],
      test_variants: [
        Models::Operations::CreateReferralsEmbedTokenTestVariants.new(
          url: 'https://example.com/variant-1',
          percentage: 50.0,
        ),
        Models::Operations::CreateReferralsEmbedTokenTestVariants.new(
          url: 'https://example.com/variant-2',
          percentage: 50.0,
        ),
      ],
    ),
  ),
)

res = s.embed_tokens.referrals(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::CreateReferralsEmbedTokenRequestBody](../../models/operations/createreferralsembedtokenrequestbody.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::CreateReferralsEmbedTokenResponseBody)](../../models/operations/createreferralsembedtokenresponsebody.md)**

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