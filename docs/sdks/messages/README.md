# Messages

## Overview

### Available Operations

* [list](#list) - List all messages
* [create](#create) - Send a message to a partner

## list

Retrieve a paginated list of direct messages between your partner program and its partners, newest first.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listMessages" method="get" path="/messages" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
  security: Models::Shared::Security.new(
    token: 'DUB_API_KEY'
  )
)

req = Models::Operations::ListMessagesRequest.new(
  ending_before: 'msg_1KAP4CDPBSVMMBMH9XX3YZZ0Z',
  starting_after: 'msg_1KAP4CDPBSVMMBMH9XX3YZZ0Z',
  page_size: 50
)
res = s.messages.list(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListMessagesRequest](../../models/operations/listmessagesrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(T::Array[Models::Operations::ListMessagesResponseBody])](../../models/operations/.md)**

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

Send a direct message from your partner program to a partner. Until the partner replies, you can only send one message to a partner who isn't enrolled in your program. Sending a message marks the partner's unread messages to your program as read. You can send up to 10 messages a minute to the same partner.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createMessage" method="post" path="/messages" -->
```ruby
require 'dub'

Models = ::OpenApiSDK::Models
s = ::OpenApiSDK::Dub.new(
  security: Models::Shared::Security.new(
    token: 'DUB_API_KEY'
  )
)

req = nil
res = s.messages.create(request: req)

unless res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::CreateMessageRequestBody](../../models/operations/createmessagerequestbody.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::CreateMessageResponseBody)](../../models/operations/createmessageresponsebody.md)**

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