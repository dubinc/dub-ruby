# UpdateCustomerResponseBody

The customer was updated.


## Fields

| Field                                                   | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `id`                                                    | *::String*                                              | :heavy_check_mark:                                      | The unique identifier of the customer in Dub.           |
| `external_id`                                           | *::String*                                              | :heavy_check_mark:                                      | Unique identifier for the customer in the client's app. |
| `name`                                                  | *::String*                                              | :heavy_check_mark:                                      | Name of the customer.                                   |
| `email`                                                 | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | Email of the customer.                                  |
| `avatar`                                                | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | Avatar URL of the customer.                             |
| `created_at`                                            | *::String*                                              | :heavy_check_mark:                                      | The date the customer was created.                      |