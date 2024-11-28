# EmbedTokens
(*embed_tokens*)

## Overview

### Available Operations

* [create](#create) - Create a new embed token

## create

Create a new embed token for the referral link.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::CreateEmbedTokenRequestBody.new(
  link_id: "<id>",
)
    
res = s.embed_tokens.create(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::OpenApiSDK::Operations::CreateEmbedTokenRequestBody](../../models/operations/createembedtokenrequestbody.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateEmbedTokenResponse)](../../models/operations/createembedtokenresponse.md)**

