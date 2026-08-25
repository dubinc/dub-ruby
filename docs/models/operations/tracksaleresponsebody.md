# TrackSaleResponseBody

A sale was tracked.


## Fields

| Field                                                                                            | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `event_name`                                                                                     | *::String*                                                                                       | :heavy_check_mark:                                                                               | N/A                                                                                              |
| `customer`                                                                                       | [T.nilable(Models::Operations::TrackSaleCustomer)](../../models/operations/tracksalecustomer.md) | :heavy_check_mark:                                                                               | N/A                                                                                              |
| `sale`                                                                                           | [T.nilable(Models::Operations::TrackSaleSale)](../../models/operations/tracksalesale.md)         | :heavy_check_mark:                                                                               | N/A                                                                                              |