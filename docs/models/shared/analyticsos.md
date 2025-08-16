# AnalyticsOS


## Fields

| Field                                            | Type                                             | Required                                         | Description                                      |
| ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ |
| `os`                                             | *::String*                                       | :heavy_check_mark:                               | The name of the OS                               |
| `clicks`                                         | *T.nilable(::Float)*                             | :heavy_minus_sign:                               | The number of clicks from this OS                |
| `leads`                                          | *T.nilable(::Float)*                             | :heavy_minus_sign:                               | The number of leads from this OS                 |
| `sales`                                          | *T.nilable(::Float)*                             | :heavy_minus_sign:                               | The number of sales from this OS                 |
| `sale_amount`                                    | *T.nilable(::Float)*                             | :heavy_minus_sign:                               | The total amount of sales from this OS, in cents |