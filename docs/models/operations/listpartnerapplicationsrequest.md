# ListPartnerApplicationsRequest


## Fields

| Field                                                        | Type                                                         | Required                                                     | Description                                                  | Example                                                      |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `country`                                                    | *T.nilable(::String)*                                        | :heavy_minus_sign:                                           | A filter on the list based on the partner's `country` field. | US                                                           |
| `group_id`                                                   | *T.nilable(::String)*                                        | :heavy_minus_sign:                                           | A filter on the list based on the partner's `groupId` field. | grp_123                                                      |
| `page`                                                       | *T.nilable(::Float)*                                         | :heavy_minus_sign:                                           | The page number for pagination.                              | 1                                                            |
| `page_size`                                                  | *T.nilable(::Float)*                                         | :heavy_minus_sign:                                           | The number of items per page.                                | 50                                                           |