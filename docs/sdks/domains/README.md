# Domains
(*domains*)

## Overview

### Available Operations

* [create](#create) - Create a domain
* [list](#list) - Retrieve a list of domains
* [update](#update) - Update a domain
* [delete](#delete) - Delete a domain
* [register](#register) - Register a domain
* [check_status](#check_status) - Check the availability of one or more domains

## create

Create a domain for the authenticated workspace.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::CreateDomainRequestBody.new(
  slug: "acme.com",
  expired_url: "https://acme.com/expired",
  not_found_url: "https://acme.com/not-found",
  archived: false,
  placeholder: "https://dub.co/help/article/what-is-dub",
)

res = s.domains.create(req)

if ! res.domain_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::OpenApiSDK::Operations::CreateDomainRequestBody](../../models/operations/createdomainrequestbody.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateDomainResponse)](../../models/operations/createdomainresponse.md)**



## list

Retrieve a list of domains associated with the authenticated workspace.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::ListDomainsRequest.new(
  page: 1.0,
  page_size: 50.0,
)

res = s.domains.list(req)

if ! res.domain_schemas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::OpenApiSDK::Operations::ListDomainsRequest](../../models/operations/listdomainsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::ListDomainsResponse)](../../models/operations/listdomainsresponse.md)**



## update

Update a domain for the authenticated workspace.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

res = s.domains.update(slug="acme.com", request_body=::OpenApiSDK::Operations::UpdateDomainRequestBody.new(
  slug: "acme.com",
  expired_url: "https://acme.com/expired",
  not_found_url: "https://acme.com/not-found",
  archived: false,
  placeholder: "https://dub.co/help/article/what-is-dub",
))

if ! res.domain_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                          | Type                                                                                                               | Required                                                                                                           | Description                                                                                                        | Example                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| `slug`                                                                                                             | *::String*                                                                                                         | :heavy_check_mark:                                                                                                 | The domain name.                                                                                                   | acme.com                                                                                                           |
| `request_body`                                                                                                     | [T.nilable(::OpenApiSDK::Operations::UpdateDomainRequestBody)](../../models/operations/updatedomainrequestbody.md) | :heavy_minus_sign:                                                                                                 | N/A                                                                                                                |                                                                                                                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::UpdateDomainResponse)](../../models/operations/updatedomainresponse.md)**



## delete

Delete a domain from a workspace. It cannot be undone. This will also delete all the links associated with the domain.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

res = s.domains.delete(slug="acme.com")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        | Example            |
| ------------------ | ------------------ | ------------------ | ------------------ | ------------------ |
| `slug`             | *::String*         | :heavy_check_mark: | The domain name.   | acme.com           |

### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteDomainResponse)](../../models/operations/deletedomainresponse.md)**



## register

Register a domain for the authenticated workspace. Only available for Enterprise Plans.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::RegisterDomainRequestBody.new(
  domain: "acme.link",
)

res = s.domains.register(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::OpenApiSDK::Operations::RegisterDomainRequestBody](../../models/operations/registerdomainrequestbody.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(::OpenApiSDK::Operations::RegisterDomainResponse)](../../models/operations/registerdomainresponse.md)**



## check_status

Check if a domain name is available for purchase. You can check multiple domains at once.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::CheckDomainStatusRequest.new(
  domains: "<value>",
)

res = s.domains.check_status(req)

if ! res.response_bodies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::OpenApiSDK::Operations::CheckDomainStatusRequest](../../models/operations/checkdomainstatusrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::OpenApiSDK::Operations::CheckDomainStatusResponse)](../../models/operations/checkdomainstatusresponse.md)**

