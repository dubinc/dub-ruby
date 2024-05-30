# Error


## Fields

| Field                                                               | Type                                                                | Required                                                            | Description                                                         | Example                                                             |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `code`                                                              | [::OpenApiSDK::Shared::Code](../../models/shared/code.md)           | :heavy_check_mark:                                                  | A short code indicating the error code returned.                    | bad_request                                                         |
| `message`                                                           | *::String*                                                          | :heavy_check_mark:                                                  | A human readable explanation of what went wrong.                    | The requested resource was not found.                               |
| `doc_url`                                                           | *T.nilable(::String)*                                               | :heavy_minus_sign:                                                  | A link to our documentation with more details about this error code | https://dub.co/docs/api-reference/errors#bad-request                |