# Workspaces
(*workspaces*)

## Overview

### Available Operations

* [get](#get) - Retrieve a workspace
* [update](#update) - Update a workspace

## get

Retrieve a workspace for the authenticated user.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWorkspace" method="get" path="/workspaces/{idOrSlug}" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::GetWorkspaceRequest.new(
  id_or_slug: '<value>',
)

res = s.workspaces.get(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::GetWorkspaceRequest](../../models/operations/getworkspacerequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Shared::WorkspaceSchema)](../../models/operations/workspaceschema.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::BadRequest          | 400                                 | application/json                    |
| Models::Errors::Unauthorized        | 401                                 | application/json                    |
| Models::Errors::Forbidden           | 403                                 | application/json                    |
| Models::Errors::NotFound            | 404                                 | application/json                    |
| Models::Errors::Conflict            | 409                                 | application/json                    |
| Models::Errors::InviteExpired       | 410                                 | application/json                    |
| Models::Errors::UnprocessableEntity | 422                                 | application/json                    |
| Models::Errors::RateLimitExceeded   | 429                                 | application/json                    |
| Models::Errors::InternalServerError | 500                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update

Update a workspace by ID or slug.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateWorkspace" method="patch" path="/workspaces/{idOrSlug}" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

res = s.workspaces.update(id_or_slug: '<value>')

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                          | Type                                                                                                               | Required                                                                                                           | Description                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| `id_or_slug`                                                                                                       | *::String*                                                                                                         | :heavy_check_mark:                                                                                                 | The ID or slug of the workspace to update.                                                                         |
| `request_body`                                                                                                     | [T.nilable(Models::Operations::UpdateWorkspaceRequestBody)](../../models/operations/updateworkspacerequestbody.md) | :heavy_minus_sign:                                                                                                 | N/A                                                                                                                |

### Response

**[T.nilable(Models::Shared::WorkspaceSchema)](../../models/operations/workspaceschema.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::BadRequest          | 400                                 | application/json                    |
| Models::Errors::Unauthorized        | 401                                 | application/json                    |
| Models::Errors::Forbidden           | 403                                 | application/json                    |
| Models::Errors::NotFound            | 404                                 | application/json                    |
| Models::Errors::Conflict            | 409                                 | application/json                    |
| Models::Errors::InviteExpired       | 410                                 | application/json                    |
| Models::Errors::UnprocessableEntity | 422                                 | application/json                    |
| Models::Errors::RateLimitExceeded   | 429                                 | application/json                    |
| Models::Errors::InternalServerError | 500                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |