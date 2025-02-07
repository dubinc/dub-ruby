# Partners
(*partners*)

## Overview

### Available Operations

* [create](#create) - Create a new partner
* [create_link](#create_link) - Create a link for a partner
* [upsert_link](#upsert_link) - Upsert a link for a partner

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
  link_props: ::OpenApiSDK::Operations::LinkProps.new(
    external_id: "123456",
    tag_ids: [
      "clux0rgak00011...",
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

Create a new link for a partner that is enrolled in your program.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::CreatePartnerLinkRequestBody.new(
  program_id: "<id>",
  url: "https://necessary-brief.name",
  link_props: ::OpenApiSDK::Operations::CreatePartnerLinkLinkProps.new(
    external_id: "123456",
    tag_ids: [
      "clux0rgak00011...",
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



## upsert_link

Upsert a link for a partner that is enrolled in your program. If a link with the same URL already exists, return it (or update it if there are any changes). Otherwise, a new link will be created.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::UpsertPartnerLinkRequestBody.new(
  program_id: "<id>",
  url: "https://unsteady-lobster.com/",
  link_props: ::OpenApiSDK::Operations::UpsertPartnerLinkLinkProps.new(
    external_id: "123456",
    tag_ids: [
      "clux0rgak00011...",
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

