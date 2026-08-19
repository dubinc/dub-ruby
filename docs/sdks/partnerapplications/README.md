# PartnerApplications

## Overview

### Available Operations

* [list](#list) - List all pending partner applications
* [approve](#approve) - Approve a partner application
* [reject](#reject) - Reject a partner application

## list

Retrieve a paginated list of pending applications for your partner program.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPartnerApplications" method="get" path="/partners/applications" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
  security: Models::Shared::Security.new(
    token: 'DUB_API_KEY'
  )
)

req = Models::Operations::ListPartnerApplicationsRequest.new(
  country: 'US',
  group_id: 'grp_123',
  page: 1,
  page_size: 50
)
res = s.partner_applications.list(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListPartnerApplicationsRequest](../../models/operations/listpartnerapplicationsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(T::Array[Models::Operations::ListPartnerApplicationsResponseBody])](../../models/operations/.md)**

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

## approve

Approve a pending partner application to your program. The partner will be enrolled in the specified group and notified of the approval.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="approvePartnerApplication" method="post" path="/partners/applications/approve" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
  security: Models::Shared::Security.new(
    token: 'DUB_API_KEY'
  )
)

req = Models::Operations::ApprovePartnerApplicationRequestBody.new(
  partner_id: '<id>'
)
res = s.partner_applications.approve(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::ApprovePartnerApplicationRequestBody](../../models/operations/approvepartnerapplicationrequestbody.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::ApprovePartnerApplicationResponseBody)](../../models/operations/approvepartnerapplicationresponsebody.md)**

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

## reject

Reject a pending partner application to your program. The partner will be notified via email that their application was not approved.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="rejectPartnerApplication" method="post" path="/partners/applications/reject" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
  security: Models::Shared::Security.new(
    token: 'DUB_API_KEY'
  )
)

req = Models::Operations::RejectPartnerApplicationRequestBody.new(
  partner_id: '<id>'
)
res = s.partner_applications.reject(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::RejectPartnerApplicationRequestBody](../../models/operations/rejectpartnerapplicationrequestbody.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::RejectPartnerApplicationResponseBody)](../../models/operations/rejectpartnerapplicationresponsebody.md)**

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