# Commissions

## Overview

### Available Operations

* [list](#list) - List all commissions
* [create](#create) - Create commission
* [update](#update) - Update a commission
* [update_many](#update_many) - Bulk update commissions

## list

Retrieve a paginated list of commissions for your partner program.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommissions" method="get" path="/commissions" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
  security: Models::Shared::Security.new(
    token: 'DUB_API_KEY'
  )
)

req = Models::Operations::ListCommissionsRequest.new(
  ending_before: 'cm_1KAP4CGN2Z5TPYYQ1W4JEYD56',
  starting_after: 'cm_1KAP4CGN2Z5TPYYQ1W4JEYD56',
  page: 1,
  page_size: 50
)
res = s.commissions.list(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListCommissionsRequest](../../models/operations/listcommissionsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListCommissionsResponse)](../../models/operations/listcommissionsresponse.md)**

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

## create

Create one or more commissions (custom, lead or sale) for a partner. Custom commissions accept a negative `amount` to create a clawback. Commission creation is processed asynchronously – use the GET /commissions endpoint or webhooks to be notified when the commission is created.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommission" method="post" path="/commissions" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
  security: Models::Shared::Security.new(
    token: 'DUB_API_KEY'
  )
)

req = Models::Operations::RequestBody2.new(
  type: Models::Operations::CreateCommissionRequestBodyType::LEAD,
  partner_id: '<id>',
  lead: Models::Operations::Lead.new(
    event_name: 'Sign up'
  ),
  lead_event_name: 'Sign up'
)
res = s.commissions.create(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                             | Type                                                                                                                                                                  | Required                                                                                                                                                              | Description                                                                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                                             | [T.any(Models::Operations::RequestBody1, Models::Operations::RequestBody2, Models::Operations::RequestBody3)](../../models/operations/createcommissionrequestbody.md) | :heavy_check_mark:                                                                                                                                                    | The request object to use for the request.                                                                                                                            |

### Response

**[T.nilable(Models::Operations::CreateCommissionResponseBody)](../../models/operations/createcommissionresponsebody.md)**

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

## update

Update an existing commission amount. This is useful for handling refunds (partial or full) or fraudulent sales.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommission" method="patch" path="/commissions/{id}" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
  security: Models::Shared::Security.new(
    token: 'DUB_API_KEY'
  )
)

req = Models::Operations::UpdateCommissionRequest.new(
  id: 'cm_1JVR7XRCSR0EDBAF39FZ4PMYE'
)
res = s.commissions.update(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateCommissionRequest](../../models/operations/updatecommissionrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateCommissionResponseBody)](../../models/operations/updatecommissionresponsebody.md)**

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

## update_many

Bulk update up to 100 commissions with the same status.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="bulkUpdateCommissions" method="patch" path="/commissions/bulk" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
  security: Models::Shared::Security.new(
    token: 'DUB_API_KEY'
  )
)

req = nil
res = s.commissions.update_many(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::BulkUpdateCommissionsRequestBody](../../models/operations/bulkupdatecommissionsrequestbody.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(T::Array[Models::Operations::BulkUpdateCommissionsResponseBody])](../../models/operations/.md)**

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