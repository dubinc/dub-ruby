# Links


### Available Operations

* [list](#list) - Retrieve a list of links
* [create](#create) - Create a new link
* [count](#count) - Retrieve the number of links
* [get](#get) - Retrieve a link
* [delete](#delete) - Delete a link
* [update](#update) - Update a link
* [create_many](#create_many) - Bulk create links
* [upsert](#upsert) - Upsert a link

## list

Retrieve a list of links for the authenticated workspace. The list will be paginated and the provided query parameters allow filtering the returned links.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::GetLinksRequest.new()
    
res = s.links.list(req)

if ! res.link_schemas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [::OpenApiSDK::Operations::GetLinksRequest](../../models/operations/getlinksrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetLinksResponse)](../../models/operations/getlinksresponse.md)**


## create

Create a new link for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.links.create(workspace_id="<value>", project_slug="<value>", request_body=::OpenApiSDK::Operations::CreateLinkRequestBody.new(
    url: "https://google/com",
    external_id: "123456",
    tag_ids: "<value>",
  ))

if ! res.link_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `workspace_id`                                                                                      | *::String*                                                                                          | :heavy_minus_sign:                                                                                  | The ID of the workspace.                                                                            |
| `project_slug`                                                                                      | *::String*                                                                                          | :heavy_minus_sign:                                                                                  | The slug of the project. This field is deprecated – use `workspaceId` instead.                      |
| `request_body`                                                                                      | [::OpenApiSDK::Operations::CreateLinkRequestBody](../../models/operations/createlinkrequestbody.md) | :heavy_minus_sign:                                                                                  | N/A                                                                                                 |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateLinkResponse)](../../models/operations/createlinkresponse.md)**


## count

Retrieve the number of links for the authenticated workspace. The provided query parameters allow filtering the returned links.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::GetLinksCountRequest.new()
    
res = s.links.count(req)

if ! res.number.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::OpenApiSDK::Operations::GetLinksCountRequest](../../models/operations/getlinkscountrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetLinksCountResponse)](../../models/operations/getlinkscountresponse.md)**


## get

Retrieve the info for a link.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::GetLinkInfoRequest.new(
  link_id: "clux0rgak00011...",
  external_id: "ext_123456",
)
    
res = s.links.get(req)

if ! res.link_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::OpenApiSDK::Operations::GetLinkInfoRequest](../../models/operations/getlinkinforequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetLinkInfoResponse)](../../models/operations/getlinkinforesponse.md)**


## delete

Delete a link for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::DeleteLinkRequest.new(
  link_id: "<value>",
)
    
res = s.links.delete(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [::OpenApiSDK::Operations::DeleteLinkRequest](../../models/operations/deletelinkrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteLinkResponse)](../../models/operations/deletelinkresponse.md)**


## update

Update a link for the authenticated workspace. If there's no change, returns it as it is.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::UpdateLinkRequest.new(
  link_id: "<value>",
)
    
res = s.links.update(req)

if ! res.link_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [::OpenApiSDK::Operations::UpdateLinkRequest](../../models/operations/updatelinkrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(::OpenApiSDK::Operations::UpdateLinkResponse)](../../models/operations/updatelinkresponse.md)**


## create_many

Bulk create up to 100 links for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.links.create_many(workspace_id="<value>", project_slug="<value>", request_body=[
    ::OpenApiSDK::Operations::RequestBody.new(
      url: "https://google/com",
      external_id: "123456",
      tag_ids: "<value>",
    ),
  ])

if ! res.link_schemas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `workspace_id`                                                                            | *::String*                                                                                | :heavy_minus_sign:                                                                        | The ID of the workspace.                                                                  |
| `project_slug`                                                                            | *::String*                                                                                | :heavy_minus_sign:                                                                        | The slug of the project. This field is deprecated – use `workspaceId` instead.            |
| `request_body`                                                                            | T::Array<[::OpenApiSDK::Operations::RequestBody](../../models/operations/requestbody.md)> | :heavy_minus_sign:                                                                        | N/A                                                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::BulkCreateLinksResponse)](../../models/operations/bulkcreatelinksresponse.md)**


## upsert

Upsert a link for the authenticated workspace by its URL. If a link with the same URL already exists, return it (or update it if there are any changes). Otherwise, a new link will be created.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.links.upsert(workspace_id="<value>", project_slug="<value>", request_body=::OpenApiSDK::Operations::UpsertLinkRequestBody.new(
    url: "https://google/com",
    external_id: "123456",
    tag_ids: "<value>",
  ))

if ! res.link_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `workspace_id`                                                                                      | *::String*                                                                                          | :heavy_minus_sign:                                                                                  | The ID of the workspace.                                                                            |
| `project_slug`                                                                                      | *::String*                                                                                          | :heavy_minus_sign:                                                                                  | The slug of the project. This field is deprecated – use `workspaceId` instead.                      |
| `request_body`                                                                                      | [::OpenApiSDK::Operations::UpsertLinkRequestBody](../../models/operations/upsertlinkrequestbody.md) | :heavy_minus_sign:                                                                                  | N/A                                                                                                 |


### Response

**[T.nilable(::OpenApiSDK::Operations::UpsertLinkResponse)](../../models/operations/upsertlinkresponse.md)**

