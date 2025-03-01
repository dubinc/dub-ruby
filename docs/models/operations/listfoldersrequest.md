# ListFoldersRequest


## Fields

| Field                                              | Type                                               | Required                                           | Description                                        | Example                                            |
| -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- |
| `search`                                           | *T.nilable(::String)*                              | :heavy_minus_sign:                                 | The search term to filter the folders by.          |                                                    |
| `include_link_count`                               | *T.nilable(T::Boolean)*                            | :heavy_minus_sign:                                 | Whether to include the link count in the response. |                                                    |
| `page`                                             | *T.nilable(::Float)*                               | :heavy_minus_sign:                                 | The page number for pagination.                    | 1                                                  |
| `page_size`                                        | *T.nilable(::Float)*                               | :heavy_minus_sign:                                 | The number of items per page.                      | 50                                                 |