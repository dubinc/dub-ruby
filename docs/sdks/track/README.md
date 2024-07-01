# Track


### Available Operations

* [lead](#lead) - Track a lead
* [sale](#sale) - Track a sale
* [customer](#customer) - Track a customer

## lead

Track a lead for a short link.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::TrackLeadRequest.new(
  request_body: ::OpenApiSDK::Operations::TrackLeadRequestBody.new(
    click_id: "<value>",
    event_name: "Sign up",
    customer_id: "<value>",
  ),
)
    
res = s.track.lead(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::OpenApiSDK::Operations::TrackLeadRequest](../../models/operations/trackleadrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(::OpenApiSDK::Operations::TrackLeadResponse)](../../models/operations/trackleadresponse.md)**


## sale

Track a sale for a short link.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::TrackSaleRequest.new(
  request_body: ::OpenApiSDK::Operations::TrackSaleRequestBody.new(
    customer_id: "<value>",
    amount: 996500,
    payment_processor: ::OpenApiSDK::Operations::PaymentProcessor::SHOPIFY,
    event_name: "Purchase",
  ),
)
    
res = s.track.sale(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::OpenApiSDK::Operations::TrackSaleRequest](../../models/operations/tracksalerequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(::OpenApiSDK::Operations::TrackSaleResponse)](../../models/operations/tracksaleresponse.md)**


## customer

Track a customer for an authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::TrackCustomerRequest.new()
    
res = s.track.customer(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::OpenApiSDK::Operations::TrackCustomerRequest](../../models/operations/trackcustomerrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(::OpenApiSDK::Operations::TrackCustomerResponse)](../../models/operations/trackcustomerresponse.md)**

