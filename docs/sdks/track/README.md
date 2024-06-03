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


s = ::OpenApiSDK::Dub.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.track.lead(workspace_id="<value>", project_slug="<value>", request_body=::OpenApiSDK::Operations::TrackLeadRequestBody.new(
    click_id: "<value>",
    event_name: "Signup",
    customer_id: "<value>",
  ))

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `workspace_id`                                                                                    | *::String*                                                                                        | :heavy_minus_sign:                                                                                | The ID of the workspace.                                                                          |
| `project_slug`                                                                                    | *::String*                                                                                        | :heavy_minus_sign:                                                                                | The slug of the project. This field is deprecated – use `workspaceId` instead.                    |
| `request_body`                                                                                    | [::OpenApiSDK::Operations::TrackLeadRequestBody](../../models/operations/trackleadrequestbody.md) | :heavy_minus_sign:                                                                                | N/A                                                                                               |


### Response

**[T.nilable(::OpenApiSDK::Operations::TrackLeadResponse)](../../models/operations/trackleadresponse.md)**


## sale

Track a sale for a short link.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.track.sale(workspace_id="<value>", project_slug="<value>", request_body=::OpenApiSDK::Operations::TrackSaleRequestBody.new(
    customer_id: "<value>",
    amount: 996500,
    payment_processor: ::OpenApiSDK::Operations::PaymentProcessor::SHOPIFY,
  ))

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `workspace_id`                                                                                    | *::String*                                                                                        | :heavy_minus_sign:                                                                                | The ID of the workspace.                                                                          |
| `project_slug`                                                                                    | *::String*                                                                                        | :heavy_minus_sign:                                                                                | The slug of the project. This field is deprecated – use `workspaceId` instead.                    |
| `request_body`                                                                                    | [::OpenApiSDK::Operations::TrackSaleRequestBody](../../models/operations/tracksalerequestbody.md) | :heavy_minus_sign:                                                                                | N/A                                                                                               |


### Response

**[T.nilable(::OpenApiSDK::Operations::TrackSaleResponse)](../../models/operations/tracksaleresponse.md)**


## customer

Track a customer for an authenticated workspace.

### Example Usage

```ruby
require 'dub'


s = ::OpenApiSDK::Dub.new(
      workspace_id: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    token: "DUB_API_KEY",
  )
)

    
res = s.track.customer(workspace_id="<value>", project_slug="<value>", request_body=::OpenApiSDK::Operations::TrackCustomerRequestBody.new(
    customer_id: "<value>",
  ))

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `workspace_id`                                                                                            | *::String*                                                                                                | :heavy_minus_sign:                                                                                        | The ID of the workspace.                                                                                  |
| `project_slug`                                                                                            | *::String*                                                                                                | :heavy_minus_sign:                                                                                        | The slug of the project. This field is deprecated – use `workspaceId` instead.                            |
| `request_body`                                                                                            | [::OpenApiSDK::Operations::TrackCustomerRequestBody](../../models/operations/trackcustomerrequestbody.md) | :heavy_minus_sign:                                                                                        | N/A                                                                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::TrackCustomerResponse)](../../models/operations/trackcustomerresponse.md)**

