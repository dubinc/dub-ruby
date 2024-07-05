# Data


## Fields

| Field                                                                                                                                                                                                                          | Type                                                                                                                                                                                                                           | Required                                                                                                                                                                                                                       | Description                                                                                                                                                                                                                    | Example                                                                                                                                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `url`                                                                                                                                                                                                                          | *T.nilable(::String)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The destination URL of the short link.                                                                                                                                                                                         | https://google/com                                                                                                                                                                                                             |
| `track_conversion`                                                                                                                                                                                                             | *T.nilable(T::Boolean)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                             | Whether to track conversions for the short link.                                                                                                                                                                               |                                                                                                                                                                                                                                |
| `archived`                                                                                                                                                                                                                     | *T.nilable(T::Boolean)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                             | Whether the short link is archived.                                                                                                                                                                                            |                                                                                                                                                                                                                                |
| `public_stats`                                                                                                                                                                                                                 | *T.nilable(T::Boolean)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                             | Whether the short link's stats are publicly accessible.                                                                                                                                                                        |                                                                                                                                                                                                                                |
| ~~`tag_id`~~                                                                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | : warning: ** DEPRECATED **: This will be removed in a future release, please migrate away from it as soon as possible.<br/><br/>The unique ID of the tag assigned to the short link. This field is deprecated – use `tagIds` instead. |                                                                                                                                                                                                                                |
| `tag_ids`                                                                                                                                                                                                                      | *T.nilable(::Object)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The unique IDs of the tags assigned to the short link.                                                                                                                                                                         | [<br/>"clux0rgak00011..."<br/>]                                                                                                                                                                                                |
| `tag_names`                                                                                                                                                                                                                    | *T.nilable(::Object)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The unique name of the tags assigned to the short link (case insensitive).                                                                                                                                                     |                                                                                                                                                                                                                                |
| `comments`                                                                                                                                                                                                                     | *T.nilable(::String)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The comments for the short link.                                                                                                                                                                                               |                                                                                                                                                                                                                                |
| `expires_at`                                                                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The date and time when the short link will expire at.                                                                                                                                                                          |                                                                                                                                                                                                                                |
| `expired_url`                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The URL to redirect to when the short link has expired.                                                                                                                                                                        |                                                                                                                                                                                                                                |
| `password`                                                                                                                                                                                                                     | *T.nilable(::String)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The password required to access the destination URL of the short link.                                                                                                                                                         |                                                                                                                                                                                                                                |
| `proxy`                                                                                                                                                                                                                        | *T.nilable(T::Boolean)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                             | Whether the short link uses Custom Social Media Cards feature.                                                                                                                                                                 |                                                                                                                                                                                                                                |
| `title`                                                                                                                                                                                                                        | *T.nilable(::String)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The title of the short link generated via `api.dub.co/metatags`. Will be used for Custom Social Media Cards if `proxy` is true.                                                                                                |                                                                                                                                                                                                                                |
| `description`                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The description of the short link generated via `api.dub.co/metatags`. Will be used for Custom Social Media Cards if `proxy` is true.                                                                                          |                                                                                                                                                                                                                                |
| `image`                                                                                                                                                                                                                        | *T.nilable(::String)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The image of the short link generated via `api.dub.co/metatags`. Will be used for Custom Social Media Cards if `proxy` is true.                                                                                                |                                                                                                                                                                                                                                |
| `rewrite`                                                                                                                                                                                                                      | *T.nilable(T::Boolean)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                             | Whether the short link uses link cloaking.                                                                                                                                                                                     |                                                                                                                                                                                                                                |
| `ios`                                                                                                                                                                                                                          | *T.nilable(::String)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The iOS destination URL for the short link for iOS device targeting.                                                                                                                                                           |                                                                                                                                                                                                                                |
| `android`                                                                                                                                                                                                                      | *T.nilable(::String)*                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                             | The Android destination URL for the short link for Android device targeting.                                                                                                                                                   |                                                                                                                                                                                                                                |
| `geo`                                                                                                                                                                                                                          | [T.nilable(::OpenApiSDK::Shared::LinkGeoTargeting)](../../models/shared/linkgeotargeting.md)                                                                                                                                   | :heavy_minus_sign:                                                                                                                                                                                                             | Geo targeting information for the short link in JSON format `{[COUNTRY]: https://example.com }`.                                                                                                                               |                                                                                                                                                                                                                                |
| `do_index`                                                                                                                                                                                                                     | *T.nilable(T::Boolean)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                             | Allow search engines to index your short link. Defaults to `false` if not provided. Learn more: https://d.to/noindex                                                                                                           |                                                                                                                                                                                                                                |