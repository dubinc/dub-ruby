# Domains


## Fields

| Field                                                       | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `slug`                                                      | *::String*                                                  | :heavy_check_mark:                                          | The domain name.                                            | acme.com                                                    |
| `primary`                                                   | *T.nilable(T::Boolean)*                                     | :heavy_minus_sign:                                          | Whether the domain is the primary domain for the workspace. |                                                             |
| `verified`                                                  | *T.nilable(T::Boolean)*                                     | :heavy_minus_sign:                                          | Whether the domain is verified.                             |                                                             |