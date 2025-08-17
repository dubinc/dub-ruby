# AnalyticsBrowsers


## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `browser`                                             | *::String*                                            | :heavy_check_mark:                                    | The name of the browser                               |
| `clicks`                                              | *T.nilable(::Float)*                                  | :heavy_minus_sign:                                    | The number of clicks from this browser                |
| `leads`                                               | *T.nilable(::Float)*                                  | :heavy_minus_sign:                                    | The number of leads from this browser                 |
| `sales`                                               | *T.nilable(::Float)*                                  | :heavy_minus_sign:                                    | The number of sales from this browser                 |
| `sale_amount`                                         | *T.nilable(::Float)*                                  | :heavy_minus_sign:                                    | The total amount of sales from this browser, in cents |