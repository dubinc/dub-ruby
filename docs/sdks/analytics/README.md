# Analytics

## Overview

### Available Operations

* [retrieve](#retrieve) - Retrieve analytics for a link, a domain, or the authenticated workspace.

## retrieve

Retrieve analytics for a link, a domain, or the authenticated workspace. The response type depends on the `event` and `type` query parameters.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::RetrieveAnalyticsRequest.new(
  timezone: "America/New_York",
  city: "New York",
  device: "Desktop",
  browser: "Chrome",
  os: "Windows",
  referer: "google.com",
  referer_url: "https://dub.co/blog",
)
    
res = s.analytics.retrieve(req)

if ! res.one_of.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::OpenApiSDK::Operations::RetrieveAnalyticsRequest](../../models/operations/retrieveanalyticsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::OpenApiSDK::Operations::RetrieveAnalyticsResponse)](../../models/operations/retrieveanalyticsresponse.md)**

