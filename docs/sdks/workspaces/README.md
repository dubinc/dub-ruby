# Workspaces


### Available Operations

* [get](#get) - Retrieve a workspace

## get

Retrieve a workspace for the authenticated user.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
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

