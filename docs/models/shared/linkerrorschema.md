# LinkErrorSchema


## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `link`                                              | *T.nilable(::Object)*                               | :heavy_minus_sign:                                  | The link that caused the error.                     |
| `error`                                             | *::String*                                          | :heavy_check_mark:                                  | The error message.                                  |
| `code`                                              | [Models::Shared::Code](../../models/shared/code.md) | :heavy_check_mark:                                  | The error code.                                     |