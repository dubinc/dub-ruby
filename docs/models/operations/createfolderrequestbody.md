# CreateFolderRequestBody


## Fields

| Field                                                                                | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `name`                                                                               | *::String*                                                                           | :heavy_check_mark:                                                                   | The name of the folder.                                                              |
| `description`                                                                        | *T.nilable(::String)*                                                                | :heavy_minus_sign:                                                                   | The description of the folder.                                                       |
| `access_level`                                                                       | [T.nilable(Models::Operations::AccessLevel)](../../models/operations/accesslevel.md) | :heavy_minus_sign:                                                                   | The access level of the folder within the workspace.                                 |