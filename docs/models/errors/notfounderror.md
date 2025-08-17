# NotFoundError


## Fields

| Field                                                               | Type                                                                | Required                                                            | Description                                                         | Example                                                             |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `code`                                                              | [Models::Errors::NotFoundCode](../../models/errors/notfoundcode.md) | :heavy_check_mark:                                                  | A short code indicating the error code returned.                    | not_found                                                           |
| `message`                                                           | *::String*                                                          | :heavy_check_mark:                                                  | A human readable explanation of what went wrong.                    | The requested resource was not found.                               |
| `doc_url`                                                           | *T.nilable(::String)*                                               | :heavy_minus_sign:                                                  | A link to our documentation with more details about this error code | https://dub.co/docs/api-reference/errors#not-found                  |