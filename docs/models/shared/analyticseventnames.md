# AnalyticsEventNames


## Fields

| Field                                                    | Type                                                     | Required                                                 | Description                                              |
| -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| `event_name`                                             | *::String*                                               | :heavy_check_mark:                                       | The name of the conversion event (lead or sale)          |
| `clicks`                                                 | *T.nilable(::Float)*                                     | :heavy_minus_sign:                                       | The number of clicks from this event name                |
| `leads`                                                  | *T.nilable(::Float)*                                     | :heavy_minus_sign:                                       | The number of leads from this event name                 |
| `sales`                                                  | *T.nilable(::Float)*                                     | :heavy_minus_sign:                                       | The number of sales from this event name                 |
| `sale_amount`                                            | *T.nilable(::Float)*                                     | :heavy_minus_sign:                                       | The total amount of sales from this event name, in cents |