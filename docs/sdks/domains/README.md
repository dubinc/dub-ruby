# Domains


### Available Operations

* [list](#list) - Retrieve a list of domains
* [create](#create) - Create a domain
* [delete](#delete) - Delete a domain
* [update](#update) - Update a domain
* [set_primary](#set_primary) - Set a domain as primary
* [transfer](#transfer) - Transfer a domain

## list

Retrieve a list of domains associated with the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.domains.list(workspace_id="<value>", project_slug="<value>")

if ! res.domain_schemas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                      | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `workspace_id`                                                                 | *::String*                                                                     | :heavy_minus_sign:                                                             | The ID of the workspace.                                                       |
| `project_slug`                                                                 | *::String*                                                                     | :heavy_minus_sign:                                                             | The slug of the project. This field is deprecated – use `workspaceId` instead. |


### Response

**[T.nilable(::OpenApiSDK::Operations::ListDomainsResponse)](../../models/operations/listdomainsresponse.md)**


## create

Create a domain for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.domains.create(workspace_id="<value>", project_slug="<value>", request_body=::OpenApiSDK::Operations::CreateDomainRequestBody.new(
    slug: "acme.com",
    expired_url: "https://acme.com/expired",
    archived: false,
    placeholder: "https://dub.co/help/article/what-is-dub",
  ))

if ! res.domain_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `workspace_id`                                                                                          | *::String*                                                                                              | :heavy_minus_sign:                                                                                      | The ID of the workspace.                                                                                |
| `project_slug`                                                                                          | *::String*                                                                                              | :heavy_minus_sign:                                                                                      | The slug of the project. This field is deprecated – use `workspaceId` instead.                          |
| `request_body`                                                                                          | [::OpenApiSDK::Operations::CreateDomainRequestBody](../../models/operations/createdomainrequestbody.md) | :heavy_minus_sign:                                                                                      | N/A                                                                                                     |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateDomainResponse)](../../models/operations/createdomainresponse.md)**


## delete

Delete a domain from a workspace. It cannot be undone. This will also delete all the links associated with the domain.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::DeleteDomainRequest.new(
  slug: "acme.com",
)
    
res = s.domains.delete(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::OpenApiSDK::Operations::DeleteDomainRequest](../../models/operations/deletedomainrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteDomainResponse)](../../models/operations/deletedomainresponse.md)**


## update

Update a domain for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::UpdateDomainRequest.new(
  slug: "acme.com",
  request_body: ::OpenApiSDK::Operations::UpdateDomainRequestBody.new(
    slug: "acme.com",
    expired_url: "https://acme.com/expired",
    archived: false,
    placeholder: "https://dub.co/help/article/what-is-dub",
  ),
)
    
res = s.domains.update(req)

if ! res.domain_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::OpenApiSDK::Operations::UpdateDomainRequest](../../models/operations/updatedomainrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(::OpenApiSDK::Operations::UpdateDomainResponse)](../../models/operations/updatedomainresponse.md)**


## set_primary

Set a domain as primary for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::SetPrimaryDomainRequest.new(
  slug: "acme.com",
)
    
res = s.domains.set_primary(req)

if ! res.domain_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::OpenApiSDK::Operations::SetPrimaryDomainRequest](../../models/operations/setprimarydomainrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(::OpenApiSDK::Operations::SetPrimaryDomainResponse)](../../models/operations/setprimarydomainresponse.md)**


## transfer

Transfer a domain to another workspace within the authenticated account.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::TransferDomainRequest.new(
  slug: "acme.com",
)
    
res = s.domains.transfer(req)

if ! res.domain_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::OpenApiSDK::Operations::TransferDomainRequest](../../models/operations/transferdomainrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(::OpenApiSDK::Operations::TransferDomainResponse)](../../models/operations/transferdomainresponse.md)**

