# AnalyticsTopUrls


## Fields

| Field                                             | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `url`                                             | *::String*                                        | :heavy_check_mark:                                | The destination URL                               |
| `clicks`                                          | *T.nilable(::Float)*                              | :heavy_minus_sign:                                | The number of clicks from this URL                |
| `leads`                                           | *T.nilable(::Float)*                              | :heavy_minus_sign:                                | The number of leads from this URL                 |
| `sales`                                           | *T.nilable(::Float)*                              | :heavy_minus_sign:                                | The number of sales from this URL                 |
| `sale_amount`                                     | *T.nilable(::Float)*                              | :heavy_minus_sign:                                | The total amount of sales from this URL, in cents |