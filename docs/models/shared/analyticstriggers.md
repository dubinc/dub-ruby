# AnalyticsTriggers


## Fields

| Field                                                        | Type                                                         | Required                                                     | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `trigger`                                                    | [Models::Shared::Trigger](../../models/shared/trigger.md)    | :heavy_check_mark:                                           | The type of trigger method: link click or QR scan            |
| `clicks`                                                     | *T.nilable(::Float)*                                         | :heavy_minus_sign:                                           | The number of clicks from this trigger method                |
| `leads`                                                      | *T.nilable(::Float)*                                         | :heavy_minus_sign:                                           | The number of leads from this trigger method                 |
| `sales`                                                      | *T.nilable(::Float)*                                         | :heavy_minus_sign:                                           | The number of sales from this trigger method                 |
| `sale_amount`                                                | *T.nilable(::Float)*                                         | :heavy_minus_sign:                                           | The total amount of sales from this trigger method, in cents |