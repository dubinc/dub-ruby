# BulkUpdateLinksRequestBody


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `link_ids`                                                           | T::Array<*::String*>                                                 | :heavy_minus_sign:                                                   | The IDs of the links to update. Takes precedence over `externalIds`. |
| `external_ids`                                                       | T::Array<*::String*>                                                 | :heavy_minus_sign:                                                   | The external IDs of the links to update as stored in your database.  |
| `data`                                                               | [Models::Operations::Data](../../models/operations/data.md)          | :heavy_check_mark:                                                   | N/A                                                                  |