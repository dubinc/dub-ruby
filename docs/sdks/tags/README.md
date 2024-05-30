# Tags


### Available Operations

* [list](#list) - Retrieve a list of tags
* [create](#create) - Create a new tag

## list

Retrieve a list of tags for the authenticated workspace.

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

    
res = s.tags.list(workspace_id="<value>", project_slug="<value>")

if ! res.tag_schemas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                      | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `workspace_id`                                                                 | *::String*                                                                     | :heavy_minus_sign:                                                             | The ID of the workspace.                                                       |
| `project_slug`                                                                 | *::String*                                                                     | :heavy_minus_sign:                                                             | The slug of the project. This field is deprecated – use `workspaceId` instead. |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetTagsResponse)](../../models/operations/gettagsresponse.md)**


## create

Create a new tag for the authenticated workspace.

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

    
res = s.tags.create(workspace_id="<value>", project_slug="<value>", request_body=::OpenApiSDK::Operations::CreateTagRequestBody.new(
    tag: "<value>",
  ))

if ! res.tag_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `workspace_id`                                                                                    | *::String*                                                                                        | :heavy_minus_sign:                                                                                | The ID of the workspace.                                                                          |
| `project_slug`                                                                                    | *::String*                                                                                        | :heavy_minus_sign:                                                                                | The slug of the project. This field is deprecated – use `workspaceId` instead.                    |
| `request_body`                                                                                    | [::OpenApiSDK::Operations::CreateTagRequestBody](../../models/operations/createtagrequestbody.md) | :heavy_minus_sign:                                                                                | N/A                                                                                               |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateTagResponse)](../../models/operations/createtagresponse.md)**

