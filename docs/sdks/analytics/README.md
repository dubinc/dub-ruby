# Analytics
(*analytics*)

## Overview

### Available Operations

* [retrieve](#retrieve) - Retrieve analytics for a link, a domain, or the authenticated workspace.

## retrieve

Retrieve analytics for a link, a domain, or the authenticated workspace. The response type depends on the `event` and `type` query parameters.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="retrieveAnalytics" method="get" path="/analytics" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::RetrieveAnalyticsRequest.new(
  event: Models::Operations::Event::LEADS,
  timezone: 'America/New_York',
  city: 'New York',
  device: 'Desktop',
  browser: 'Chrome',
  os: 'Windows',
  referer: 'google.com',
  referer_url: 'https://dub.co/blog',
  query: 'metadata[\'key\']:\'value\'',
)

res = s.analytics.retrieve(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::RetrieveAnalyticsRequest](../../models/operations/retrieveanalyticsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(T.any(Models::Shared::AnalyticsCount, T::Array[Models::Shared::AnalyticsTimeseries], T::Array[Models::Shared::AnalyticsContinents], T::Array[Models::Shared::AnalyticsCountries], T::Array[Models::Shared::AnalyticsRegions], T::Array[Models::Shared::AnalyticsCities], T::Array[Models::Shared::AnalyticsDevices], T::Array[Models::Shared::AnalyticsBrowsers], T::Array[Models::Shared::AnalyticsOS], T::Array[Models::Shared::AnalyticsTriggers], T::Array[Models::Shared::AnalyticsReferers], T::Array[Models::Shared::AnalyticsRefererUrls], T::Array[Models::Shared::AnalyticsTopLinks], T::Array[Models::Shared::AnalyticsTopUrls]))](../../models/operations/retrieveanalyticsresponsebody.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::BadRequest          | 400                                 | application/json                    |
| Models::Errors::Unauthorized        | 401                                 | application/json                    |
| Models::Errors::Forbidden           | 403                                 | application/json                    |
| Models::Errors::NotFound            | 404                                 | application/json                    |
| Models::Errors::Conflict            | 409                                 | application/json                    |
| Models::Errors::InviteExpired       | 410                                 | application/json                    |
| Models::Errors::UnprocessableEntity | 422                                 | application/json                    |
| Models::Errors::RateLimitExceeded   | 429                                 | application/json                    |
| Models::Errors::InternalServerError | 500                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |