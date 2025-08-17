# AnalyticsRefererUrls


## Fields

| Field                                                             | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `referer_url`                                                     | *::String*                                                        | :heavy_check_mark:                                                | The full URL of the referer. If unknown, this will be `(direct)`  |
| `clicks`                                                          | *T.nilable(::Float)*                                              | :heavy_minus_sign:                                                | The number of clicks from this referer to this URL                |
| `leads`                                                           | *T.nilable(::Float)*                                              | :heavy_minus_sign:                                                | The number of leads from this referer to this URL                 |
| `sales`                                                           | *T.nilable(::Float)*                                              | :heavy_minus_sign:                                                | The number of sales from this referer to this URL                 |
| `sale_amount`                                                     | *T.nilable(::Float)*                                              | :heavy_minus_sign:                                                | The total amount of sales from this referer to this URL, in cents |