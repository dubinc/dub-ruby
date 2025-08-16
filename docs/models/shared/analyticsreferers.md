# AnalyticsReferers


## Fields

| Field                                                        | Type                                                         | Required                                                     | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `referer`                                                    | *::String*                                                   | :heavy_check_mark:                                           | The name of the referer. If unknown, this will be `(direct)` |
| `clicks`                                                     | *T.nilable(::Float)*                                         | :heavy_minus_sign:                                           | The number of clicks from this referer                       |
| `leads`                                                      | *T.nilable(::Float)*                                         | :heavy_minus_sign:                                           | The number of leads from this referer                        |
| `sales`                                                      | *T.nilable(::Float)*                                         | :heavy_minus_sign:                                           | The number of sales from this referer                        |
| `sale_amount`                                                | *T.nilable(::Float)*                                         | :heavy_minus_sign:                                           | The total amount of sales from this referer, in cents        |