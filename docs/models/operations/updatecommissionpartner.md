# UpdateCommissionPartner


## Fields

| Field                                                             | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | The partner's unique ID on Dub.                                   |
| `name`                                                            | *::String*                                                        | :heavy_check_mark:                                                | The partner's full legal name.                                    |
| `email`                                                           | *::String*                                                        | :heavy_check_mark:                                                | The partner's email address. Should be a unique value across Dub. |
| `image`                                                           | *::String*                                                        | :heavy_check_mark:                                                | The partner's avatar image.                                       |
| `payouts_enabled_at`                                              | *::String*                                                        | :heavy_check_mark:                                                | The date when the partner enabled payouts.                        |
| `country`                                                         | *::String*                                                        | :heavy_check_mark:                                                | The partner's country (required for tax purposes).                |