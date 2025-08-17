# Users


## Fields

| Field                                                       | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `role`                                                      | [Models::Shared::Role](../../models/shared/role.md)         | :heavy_check_mark:                                          | The role of the authenticated user in the workspace.        |
| `default_folder_id`                                         | *T.nilable(::String)*                                       | :heavy_check_mark:                                          | The ID of the default folder for the user in the workspace. |