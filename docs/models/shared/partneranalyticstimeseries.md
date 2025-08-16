# PartnerAnalyticsTimeseries


## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `start`                                             | *::String*                                          | :heavy_check_mark:                                  | The starting timestamp of the interval              |
| `clicks`                                            | *T.nilable(::Float)*                                | :heavy_minus_sign:                                  | The number of clicks in the interval                |
| `leads`                                             | *T.nilable(::Float)*                                | :heavy_minus_sign:                                  | The number of leads in the interval                 |
| `sales`                                             | *T.nilable(::Float)*                                | :heavy_minus_sign:                                  | The number of sales in the interval                 |
| `sale_amount`                                       | *T.nilable(::Float)*                                | :heavy_minus_sign:                                  | The total amount of sales in the interval, in cents |
| `earnings`                                          | *T.nilable(::Float)*                                | :heavy_minus_sign:                                  | N/A                                                 |