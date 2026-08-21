# TargetPartner

The target partner account that the source account was merged into.


## Fields

| Field                                  | Type                                   | Required                               | Description                            |
| -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- |
| `id`                                   | *::String*                             | :heavy_check_mark:                     | The partner's unique ID on Dub.        |
| `tenant_id`                            | *T.nilable(::String)*                  | :heavy_check_mark:                     | The partner's unique ID in your system |
| `email`                                | *T.nilable(::String)*                  | :heavy_check_mark:                     | The partner's email address.           |