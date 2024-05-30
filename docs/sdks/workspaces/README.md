# Workspaces


### Available Operations

* [list](#list) - Retrieve a list of workspaces
* [create](#create) - Create a workspace
* [get](#get) - Retrieve a workspace

## list

Retrieve a list of workspaces for the authenticated user.

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

    
res = s.workspaces.list()

if ! res.workspace_schemas.nil?
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspacesResponse)](../../models/operations/getworkspacesresponse.md)**


## create

Create a new workspace for the authenticated user.

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


req = ::OpenApiSDK::Operations::CreateWorkspaceRequestBody.new(
  name: "<value>",
  slug: "<value>",
)
    
res = s.workspaces.create(req)

if ! res.workspace_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::OpenApiSDK::Operations::CreateWorkspaceRequestBody](../../models/operations/createworkspacerequestbody.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::OpenApiSDK::Operations::CreateWorkspaceResponse)](../../models/operations/createworkspaceresponse.md)**


## get

Retrieve a workspace for the authenticated user.

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

    
res = s.workspaces.get(id_or_slug="<value>")

if ! res.workspace_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `id_or_slug`                     | *::String*                       | :heavy_check_mark:               | The ID or slug of the workspace. |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceResponse)](../../models/operations/getworkspaceresponse.md)**

