# Workspaces

## Overview

### Available Operations

* [get](#get) - Retrieve a workspace
* [update](#update) - Update a workspace

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


req = ::OpenApiSDK::Operations::GetWorkspaceRequest.new(
  id_or_slug: "<value>",
)
    
res = s.workspaces.get(req)

if ! res.workspace_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::OpenApiSDK::Operations::GetWorkspaceRequest](../../models/operations/getworkspacerequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetWorkspaceResponse)](../../models/operations/getworkspaceresponse.md)**



## update

Update a workspace by ID or slug.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.workspaces.update(id_or_slug="<value>", request_body=::OpenApiSDK::Operations::UpdateWorkspaceRequestBody.new())

if ! res.workspace_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                | Type                                                                                                                     | Required                                                                                                                 | Description                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ |
| `id_or_slug`                                                                                                             | *::String*                                                                                                               | :heavy_check_mark:                                                                                                       | The ID or slug of the workspace to update.                                                                               |
| `request_body`                                                                                                           | [T.nilable(::OpenApiSDK::Operations::UpdateWorkspaceRequestBody)](../../models/operations/updateworkspacerequestbody.md) | :heavy_minus_sign:                                                                                                       | N/A                                                                                                                      |

### Response

**[T.nilable(::OpenApiSDK::Operations::UpdateWorkspaceResponse)](../../models/operations/updateworkspaceresponse.md)**

