# Folders
(*folders*)

## Overview

### Available Operations

* [create](#create) - Create a new folder
* [list](#list) - Retrieve a list of folders
* [update](#update) - Update a folder
* [delete](#delete) - Delete a folder

## create

Create a new folder for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::CreateFolderRequestBody.new(
  name: "<value>",
)
    
res = s.folders.create(req)

if ! res.folder_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::OpenApiSDK::Operations::CreateFolderRequestBody](../../models/operations/createfolderrequestbody.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(::OpenApiSDK::Operations::CreateFolderResponse)](../../models/operations/createfolderresponse.md)**



## list

Retrieve a list of folders for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::ListFoldersRequest.new()
    
res = s.folders.list(req)

if ! res.folder_schemas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::OpenApiSDK::Operations::ListFoldersRequest](../../models/operations/listfoldersrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::OpenApiSDK::Operations::ListFoldersResponse)](../../models/operations/listfoldersresponse.md)**



## update

Update a folder in the workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.folders.update(id="<id>", request_body=::OpenApiSDK::Operations::UpdateFolderRequestBody.new())

if ! res.folder_schema.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                          | Type                                                                                                               | Required                                                                                                           | Description                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| `id`                                                                                                               | *::String*                                                                                                         | :heavy_check_mark:                                                                                                 | The ID of the folder to update.                                                                                    |
| `request_body`                                                                                                     | [T.nilable(::OpenApiSDK::Operations::UpdateFolderRequestBody)](../../models/operations/updatefolderrequestbody.md) | :heavy_minus_sign:                                                                                                 | N/A                                                                                                                |

### Response

**[T.nilable(::OpenApiSDK::Operations::UpdateFolderResponse)](../../models/operations/updatefolderresponse.md)**



## delete

Delete a folder from the workspace. All existing links will still work, but they will no longer be associated with this folder.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.folders.delete(id="<id>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                       | Type                            | Required                        | Description                     |
| ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- |
| `id`                            | *::String*                      | :heavy_check_mark:              | The ID of the folder to delete. |

### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteFolderResponse)](../../models/operations/deletefolderresponse.md)**

