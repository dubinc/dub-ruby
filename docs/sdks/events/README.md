# Events
(*events*)

## Overview

### Available Operations

* [list](#list) - Retrieve a list of events

## list

Retrieve a paginated list of events for the authenticated workspace.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listEvents" method="get" path="/events" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
      security: Models::Shared::Security.new(
        token: 'DUB_API_KEY',
      ),
    )

req = Models::Operations::ListEventsRequest.new(
  timezone: 'America/New_York',
  city: 'New York',
  device: 'Desktop',
  browser: 'Chrome',
  os: 'Windows',
  referer: 'google.com',
  referer_url: 'https://dub.co/blog',
  query: 'metadata[\'key\']:\'value\'',
)

res = s.events.list(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Operations::ListEventsRequest](../../models/operations/listeventsrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |

### Response

**[T.nilable(T::Array[T.any(Models::Shared::ClickEvent, Models::Shared::LeadEvent, Models::Shared::SaleEvent)])](../../models/operations/.md)**

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