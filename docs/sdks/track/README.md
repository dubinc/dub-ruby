# Track
(*track*)

## Overview

### Available Operations

* [lead](#lead) - Track a lead
* [sale](#sale) - Track a sale

## lead

Track a lead for a short link.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::TrackLeadRequestBody.new(
  click_id: "<id>",
  event_name: "Sign up",
  external_id: "<id>",
)

res = s.track.lead(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::OpenApiSDK::Operations::TrackLeadRequestBody](../../models/operations/trackleadrequestbody.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::TrackLeadResponse)](../../models/operations/trackleadresponse.md)**



## sale

Track a sale for a short link.

### Example Usage

```ruby
require 'dub'

s = ::OpenApiSDK::Dub.new(
      security: ::OpenApiSDK::Shared::Security.new(
        token: "DUB_API_KEY",
      ),
    )

req = ::OpenApiSDK::Operations::TrackSaleRequestBody.new(
  external_id: "<id>",
  amount: 996_500,
  event_name: "Invoice paid",
  payment_processor: ::OpenApiSDK::Operations::PaymentProcessor::CUSTOM,
  lead_event_name: "Cloned template 1481267",
)

res = s.track.sale(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::OpenApiSDK::Operations::TrackSaleRequestBody](../../models/operations/tracksalerequestbody.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(::OpenApiSDK::Operations::TrackSaleResponse)](../../models/operations/tracksaleresponse.md)**

