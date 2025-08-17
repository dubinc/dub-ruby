# AnalyticsDevices


## Fields

| Field                                                | Type                                                 | Required                                             | Description                                          |
| ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- |
| `device`                                             | *::String*                                           | :heavy_check_mark:                                   | The name of the device                               |
| `clicks`                                             | *T.nilable(::Float)*                                 | :heavy_minus_sign:                                   | The number of clicks from this device                |
| `leads`                                              | *T.nilable(::Float)*                                 | :heavy_minus_sign:                                   | The number of leads from this device                 |
| `sales`                                              | *T.nilable(::Float)*                                 | :heavy_minus_sign:                                   | The number of sales from this device                 |
| `sale_amount`                                        | *T.nilable(::Float)*                                 | :heavy_minus_sign:                                   | The total amount of sales from this device, in cents |