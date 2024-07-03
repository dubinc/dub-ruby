# Links


### Available Operations

* [list](#list) - Retrieve a list of links
* [create](#create) - Create a new link
* [count](#count) - Retrieve the number of links
* [get](#get) - Retrieve a link
* [delete](#delete) - Delete a link
* [update](#update) - Update a link
* [create_many](#create_many) - Bulk create links
* [update_many](#update_many) - Bulk update links
* [upsert](#upsert) - Upsert a link

## list

Retrieve a list of links for the authenticated workspace. The list will be paginated and the provided query parameters allow filtering the returned links.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
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


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::CreateLinkRequest.new(
  request_body: ::OpenApiSDK::Operations::CreateLinkRequestBody.new(
    url: "https://google/com",
    external_id: "123456",
    tag_ids: [
    "<value>",
  ],
  ),
)
    
res = s.links.create(req)

if ! res.link_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [::OpenApiSDK::Operations::CreateLinkRequest](../../models/operations/createlinkrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateLinkResponse)](../../models/operations/createlinkresponse.md)**


## count

Retrieve the number of links for the authenticated workspace. The provided query parameters allow filtering the returned links.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
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


s = ::OpenApiSDK::Dub.new
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


s = ::OpenApiSDK::Dub.new
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


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::UpdateLinkRequest.new(
  link_id: "<value>",
  request_body: ::OpenApiSDK::Operations::UpdateLinkRequestBody.new(
    url: "https://google/com",
    external_id: "123456",
    tag_ids: [
    "<value>",
  ],
  ),
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


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::BulkCreateLinksRequest.new(
  request_body: [
    ::OpenApiSDK::Operations::RequestBody.new(
      url: "https://google/com",
      external_id: "123456",
      tag_ids: [
      "<value>",
    ],
    ),
  ],
)
    
res = s.links.create_many(req)

if ! res.link_schemas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::OpenApiSDK::Operations::BulkCreateLinksRequest](../../models/operations/bulkcreatelinksrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(::OpenApiSDK::Operations::BulkCreateLinksResponse)](../../models/operations/bulkcreatelinksresponse.md)**


## update_many

Bulk update up to 100 links with the same data for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::BulkUpdateLinksRequestBody.new(
  link_ids: [
    "<value>",
  ],
  data: ::OpenApiSDK::Operations::Data.new(
    url: "https://google/com",
    tag_ids: [
    "<value>",
  ],
  ),
)
    
res = s.links.update_many(req)

if ! res.link_schemas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::OpenApiSDK::Operations::BulkUpdateLinksRequestBody](../../models/operations/bulkupdatelinksrequestbody.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::OpenApiSDK::Operations::BulkUpdateLinksResponse)](../../models/operations/bulkupdatelinksresponse.md)**


## upsert

Upsert a link for the authenticated workspace by its URL. If a link with the same URL already exists, return it (or update it if there are any changes). Otherwise, a new link will be created.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::UpsertLinkRequest.new(
  request_body: ::OpenApiSDK::Operations::UpsertLinkRequestBody.new(
    url: "https://google/com",
    external_id: "123456",
    tag_ids: [
    "<value>",
  ],
  ),
)
    
res = s.links.upsert(req)

if ! res.link_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [::OpenApiSDK::Operations::UpsertLinkRequest](../../models/operations/upsertlinkrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(::OpenApiSDK::Operations::UpsertLinkResponse)](../../models/operations/upsertlinkresponse.md)**

