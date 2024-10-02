# Events

## Overview

### Available Operations

* [list](#list) - Retrieve a list of events

## list

Retrieve a paginated list of events for the authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::ListEventsRequest.new(
  timezone: "America/New_York",
  city: "New York",
  device: "Desktop",
  browser: "Chrome",
  os: "Windows",
  referer: "google.com",
  referer_url: "https://dub.co/blog",
)
    
res = s.events.list(req)

if ! res.click_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [::OpenApiSDK::Operations::ListEventsRequest](../../models/operations/listeventsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(::OpenApiSDK::Operations::ListEventsResponse)](../../models/operations/listeventsresponse.md)**

