# ListCommissionsPartner


## Fields

| Field                                                             | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | The partner's unique ID on Dub.                                   |
| `name`                                                            | *::String*                                                        | :heavy_check_mark:                                                | The partner's full legal name.                                    |
| `email`                                                           | *T.nilable(::String)*                                             | :heavy_check_mark:                                                | The partner's email address. Should be a unique value across Dub. |
| `image`                                                           | *T.nilable(::String)*                                             | :heavy_check_mark:                                                | The partner's avatar image.                                       |
| `payouts_enabled_at`                                              | *T.nilable(::String)*                                             | :heavy_check_mark:                                                | The date when the partner enabled payouts.                        |
| `country`                                                         | *T.nilable(::String)*                                             | :heavy_check_mark:                                                | The partner's country (required for tax purposes).                |
| `group_id`                                                        | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | The partner's group ID on Dub.                                    |