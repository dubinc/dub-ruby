# EmbedTokens
(*embed_tokens*)

## Overview

### Available Operations

* [referrals](#referrals) - Create a new referrals embed token

## referrals

Create a new referrals embed token for the given partner/tenant.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::CreateReferralsEmbedTokenRequestBody.new(
  program_id: "<id>",
  partner: ::OpenApiSDK::Operations::Partner.new(
    name: "<value>",
    email: "Florencio98@hotmail.com",
    link_props: ::OpenApiSDK::Operations::CreateReferralsEmbedTokenLinkProps.new(
      external_id: "123456",
      tag_ids: [
        "clux0rgak00011...",
      ],
      test_variants: [
        ::OpenApiSDK::Operations::CreateReferralsEmbedTokenTestVariants.new(
          url: "https://example.com/variant-1",
          percentage: 50.0,
        ),
        ::OpenApiSDK::Operations::CreateReferralsEmbedTokenTestVariants.new(
          url: "https://example.com/variant-2",
          percentage: 50.0,
        ),
      ],
    ),
  ),
)

res = s.embed_tokens.referrals(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                         | [::OpenApiSDK::Operations::CreateReferralsEmbedTokenRequestBody](../../models/operations/createreferralsembedtokenrequestbody.md) | :heavy_check_mark:                                                                                                                | The request object to use for the request.                                                                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateReferralsEmbedTokenResponse)](../../models/operations/createreferralsembedtokenresponse.md)**

