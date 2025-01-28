# Partners
(*partners*)

## Overview

### Available Operations

* [create](#create) - Create a new partner

## create

Create a new partner for a program. If partner exists, automatically enrolls them.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::CreatePartnerRequestBody.new(
  program_id: "<id>",
  name: "<value>",
  email: "Loyal79@yahoo.com",
  username: "Aaliyah_Borer",
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

